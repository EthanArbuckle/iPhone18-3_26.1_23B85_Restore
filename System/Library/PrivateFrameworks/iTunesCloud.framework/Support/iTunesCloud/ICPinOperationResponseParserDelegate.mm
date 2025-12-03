@interface ICPinOperationResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICPinOperationResponseParserDelegate)initWithEntityType:(int64_t)type pinAction:(int64_t)action;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didFinishWithState:(int64_t)state;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation ICPinOperationResponseParserDelegate

- (void)parser:(id)parser didFinishWithState:(int64_t)state
{
  parserCopy = parser;
  pinStatus = self->_pinStatus;
  if (*&self->_overallStatus == 0xC8000000C8)
  {
    goto LABEL_17;
  }

  self->_updateRequired = 1;
  if (pinStatus != 200)
  {
    if (pinStatus == 962)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        v8 = "Response: duplicate pinned item";
        goto LABEL_9;
      }
    }

    else if (pinStatus == 961)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        v8 = "Response: library pin limit exceeded.";
LABEL_9:
        v9 = v7;
        v10 = 2;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, v15, v10);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_pinStatus;
        *v15 = 134217984;
        *&v15[4] = v11;
        v8 = "Response: (HTTP 200, PinStatusCode %lu).";
        v9 = v7;
        v10 = 12;
        goto LABEL_12;
      }
    }
  }

  v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    overallStatus = self->_overallStatus;
    v13 = self->_pinStatus;
    *v15 = 134218496;
    *&v15[4] = self;
    *&v15[12] = 1024;
    *&v15[14] = v13;
    v16 = 1024;
    v17 = overallStatus;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%p pin action failed (_pinStatus=%d, _overallStatus=%d)", v15, 0x18u);
  }

LABEL_17:
  [(ICPinOperationResponseParserDelegate *)self setUpdateRequired:self->_updateRequired, *v15];
  [(ICPinOperationResponseParserDelegate *)self setActionFailed:self->_pinStatus != 200];
}

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428 && self->_pinStatus == 200)
  {
    if (self->_currentCloudID)
    {
      addedItems = self->_addedItems;
      v9 = parserCopy;
      v8 = [NSNumber numberWithUnsignedLongLong:?];
      [(NSMutableSet *)addedItems addObject:v8];
    }

    else
    {
      if (!self->_currentCloudLibraryID)
      {
        goto LABEL_8;
      }

      v9 = parserCopy;
      [(NSMutableSet *)self->_addedItems addObject:?];
    }

    parserCopy = v9;
  }

LABEL_8:
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1835624803)
  {
    if (code != 1634353513)
    {
      if (code == 1634366576)
      {
        v20 = bswap32(*bytes);
        if (self->_pinAction != v20)
        {
          v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            pinAction = self->_pinAction;
            v22 = 134218496;
            selfCopy2 = self;
            v24 = 1024;
            v25 = pinAction;
            v26 = 1024;
            v27 = v20;
            v15 = "%p pin action differs (request=%d, response=%d)";
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (code != 1634888036)
      {
        goto LABEL_28;
      }
    }

    v16 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    currentCloudLibraryID = self->_currentCloudLibraryID;
    self->_currentCloudLibraryID = v16;

    goto LABEL_28;
  }

  if (code > 1836282995)
  {
    if (code == 1836282996)
    {
      v19 = bswap32(*bytes);
      if (self->_processingItemListing)
      {
        self->_pinStatus = v19;
      }

      else
      {
        self->_overallStatus = v19;
      }
    }

    else if (code == 1836413042)
    {
      self->_updateRequired = *bytes != 0;
    }
  }

  else
  {
    if (code == 1835624804)
    {
      if (length == 8)
      {
        v18 = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
      }

      else
      {
        if (length != 4)
        {
          goto LABEL_28;
        }

        v18 = bswap32(*bytes);
      }

      self->_currentCloudID = v18;
      goto LABEL_28;
    }

    if (code == 1835625316)
    {
      v11 = *bytes;
      entityType = self->_entityType;
      if (v11 != DAAPPinTypeFromICLibraryPinEntityType())
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_entityType;
          v22 = 134218496;
          selfCopy2 = self;
          v24 = 1024;
          v25 = v14;
          v26 = 1024;
          v27 = v11;
          v15 = "%p item type differs (request=%d, response=%d)";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, &v22, 0x18u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }
  }

LABEL_28:
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    currentCloudLibraryID = self->_currentCloudLibraryID;
    self->_currentCloudID = 0;
    self->_currentCloudLibraryID = 0;

    self->_processingItemListing = 1;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835625315)
  {
    if (code <= 1835821427)
    {
      if (code == 1835625316)
      {
        return result;
      }

      v5 = 1835819884;
      goto LABEL_14;
    }

    if (code != 1835821428 && code != 1836282996)
    {
      v5 = 1836413042;
LABEL_14:
      if (code != v5)
      {
        return 0;
      }
    }
  }

  else
  {
    if (code <= 1634366575)
    {
      if (code == 1634353513)
      {
        return result;
      }

      v5 = 1634365043;
      goto LABEL_14;
    }

    if (code != 1634366576 && code != 1634888036)
    {
      v5 = 1835624804;
      goto LABEL_14;
    }
  }

  return result;
}

- (ICPinOperationResponseParserDelegate)initWithEntityType:(int64_t)type pinAction:(int64_t)action
{
  v11.receiver = self;
  v11.super_class = ICPinOperationResponseParserDelegate;
  v6 = [(ICPinOperationResponseParserDelegate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_entityType = type;
    v6->_pinAction = action;
    v8 = +[NSMutableSet set];
    addedItems = v7->_addedItems;
    v7->_addedItems = v8;

    v7->_processingItemListing = 0;
    v7->_overallStatus = 0;
    v7->_pinStatus = 0;
    v7->_updateRequired = 0;
  }

  return v7;
}

@end