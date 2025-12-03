@interface MFIMAPOperation
+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor;
- (BOOL)actsOnTemporaryUid:(unsigned int)uid;
- (BOOL)isSourceOfTemporaryUid:(unsigned int)uid;
- (BOOL)isValid;
- (MFIMAPOperation)initWithAppendedUid:(unsigned int)uid approximateSize:(unsigned int)size flags:(id)flags internalDate:(id)date mailbox:(id)mailbox;
- (MFIMAPOperation)initWithFlagsToSet:(id)set flagsToClear:(id)clear forUids:(id)uids inMailbox:(id)mailbox;
- (MFIMAPOperation)initWithType:(int)type mailbox:(id)mailbox;
- (MFIMAPOperation)initWithUidsToCopy:(id)copy fromMailbox:(id)mailbox toMailbox:(id)toMailbox firstNewUid:(unsigned int)uid;
- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor;
- (id)description;
- (unsigned)approximateSize;
- (unsigned)firstTemporaryUid;
- (unsigned)lastTemporaryUid;
- (unsigned)sourceUidForTemporaryUid:(unsigned int)uid;
- (void)dealloc;
- (void)expungeTemporaryUid:(unsigned int)uid;
- (void)serializeIntoData:(id)data;
- (void)setUsesRealUids:(BOOL)uids;
@end

@implementation MFIMAPOperation

+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v19 = 0;
  [dataCopy getBytes:&v19 + 1 range:{(*cursor)++, 1}];
  [dataCopy getBytes:&v19 range:?];
  v7 = (*cursor)++;
  v8 = v19;
  if (!HIBYTE(v19))
  {
    v9 = off_279E32A48;
    goto LABEL_5;
  }

  if (HIBYTE(v19) == 1)
  {
    v9 = off_279E32A40;
LABEL_5:
    v10 = *v9;
    v11 = objc_opt_class();
    goto LABEL_7;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@: Unexpected byte %x at position %lu", self, HIBYTE(v19), v7}];
  v11 = 0;
LABEL_7:
  if ((v8 & 7u) - 1 > 4)
  {
    v15 = vm_imap_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *cursor;
      *buf = 67109376;
      v21 = v19;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected byte %u at position %lu", buf, 0x12u);
    }

    v14 = 0;
  }

  else
  {
    v12 = objc_alloc_init(v11);
    v12[8] = v19 & 0x80 | v8 & 0x7F;
    v13 = v12;
    v14 = [v13 _deserializeOpSpecificValuesFromData:dataCopy cursor:cursor];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor
{
  dataCopy = data;
  v7 = _createStringFromData(dataCopy, cursor);
  mailboxName = self->_mailboxName;
  self->_mailboxName = v7;

  v9 = *(self + 8) & 7;
  switch(v9)
  {
    case 5:
      self->_opSpecific.copy.srcUids = _createUidArrayFromData(dataCopy, cursor);
      self->_opSpecific.copy.dstUids = _createUidArrayFromData(dataCopy, cursor);
      v16 = _createStringFromData(dataCopy, cursor);
      destinationMailbox = self->_opSpecific.copy.destinationMailbox;
      self->_opSpecific.copy.destinationMailbox = v16;

      break;
    case 4:
      v14 = _createStringArrayFromData(dataCopy, cursor);
      flags = self->_opSpecific.append.flags;
      self->_opSpecific.append.flags = v14;

      [dataCopy getBytes:&v20 range:{*cursor, 4}];
      *cursor += 4;
      self->_opSpecific.append.internalDate = v20;
      [dataCopy getBytes:&v21 range:?];
      *cursor += 4;
      self->_opSpecific.append.uid = v21;
      [dataCopy getBytes:&v22 range:?];
      *cursor += 4;
      self->_opSpecific.append.size = v22;
      break;
    case 3:
      v10 = _createStringArrayFromData(dataCopy, cursor);
      trueFlags = self->_opSpecific.store.trueFlags;
      self->_opSpecific.store.trueFlags = v10;

      v12 = _createStringArrayFromData(dataCopy, cursor);
      falseFlags = self->_opSpecific.store.falseFlags;
      self->_opSpecific.store.falseFlags = v12;

      self->_opSpecific.store.uids = _createUidArrayFromData(dataCopy, cursor);
      break;
  }

  if (![(MFIMAPOperation *)self isValid])
  {
    v18 = vm_imap_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [MFIMAPOperation _deserializeOpSpecificValuesFromData:v18 cursor:?];
    }

    self = 0;
  }

  return self;
}

- (void)serializeIntoData:(id)data
{
  dataCopy = data;
  _magic = [(MFIMAPOperation *)self _magic];
  v6 = *(self + 8);
  [dataCopy appendBytes:&_magic length:1];
  [dataCopy appendBytes:&v6 length:1];
  _serializeStringToData(self->_mailboxName, dataCopy);
  v5 = *(self + 8) & 7;
  switch(v5)
  {
    case 5:
      _serializeUidArrayToData(self->_opSpecific.copy.srcUids, dataCopy);
      _serializeUidArrayToData(self->_opSpecific.copy.dstUids, dataCopy);
      _serializeStringToData(self->_opSpecific.copy.destinationMailbox, dataCopy);
      break;
    case 4:
      _serializeStringArrayToData(self->_opSpecific.append.flags, dataCopy);
      internalDate = self->_opSpecific.append.internalDate;
      [dataCopy appendBytes:&internalDate length:4];
      uid = self->_opSpecific.append.uid;
      [dataCopy appendBytes:&uid length:4];
      size = self->_opSpecific.append.size;
      [dataCopy appendBytes:&size length:4];
      break;
    case 3:
      _serializeStringArrayToData(self->_opSpecific.store.trueFlags, dataCopy);
      _serializeStringArrayToData(self->_opSpecific.store.falseFlags, dataCopy);
      _serializeUidArrayToData(self->_opSpecific.store.uids, dataCopy);
      break;
  }
}

- (MFIMAPOperation)initWithType:(int)type mailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy length])
  {
    v18.receiver = self;
    v18.super_class = MFIMAPOperation;
    v7 = [(MFIMAPOperation *)&v18 init];
    v8 = v7;
    if (v7)
    {
      *(v7 + 8) = *(v7 + 8) & 0xF8 | type & 7;
      v9 = [mailboxCopy copy];
      mailboxName = v8->_mailboxName;
      v8->_mailboxName = v9;

      trueFlags = v8->_opSpecific.store.trueFlags;
      v8->_opSpecific.store.trueFlags = 0;

      falseFlags = v8->_opSpecific.store.falseFlags;
      v8->_opSpecific.store.falseFlags = 0;

      v8->_opSpecific.store.uids = 0;
      v8->_opSpecific.append.uid = 0;
      flags = v8->_opSpecific.append.flags;
      v8->_opSpecific.append.flags = 0;

      destinationMailbox = v8->_opSpecific.copy.destinationMailbox;
      *&v8->_opSpecific.append.internalDate = 0u;
      *&v8->_opSpecific.copy.dstUids = 0u;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v16 = vm_imap_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPOperation *)mailboxCopy initWithType:type mailbox:v16];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MFIMAPOperation)initWithFlagsToSet:(id)set flagsToClear:(id)clear forUids:(id)uids inMailbox:(id)mailbox
{
  v31 = *MEMORY[0x277D85DE8];
  setCopy = set;
  clearCopy = clear;
  uidsCopy = uids;
  v13 = [(MFIMAPOperation *)self initWithType:3 mailbox:mailbox];
  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = [setCopy copy];
  trueFlags = v13->_opSpecific.store.trueFlags;
  v13->_opSpecific.store.trueFlags = v14;

  v16 = [clearCopy copy];
  falseFlags = v13->_opSpecific.store.falseFlags;
  v13->_opSpecific.store.falseFlags = v16;

  v13->_opSpecific.store.uids = _createUidArrayFromStringArray(uidsCopy);
  if (![(MFIMAPOperation *)v13 isValid])
  {
    v19 = vm_imap_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [(NSArray *)v13->_opSpecific.store.trueFlags count];
      v23 = [(NSArray *)v13->_opSpecific.store.falseFlags count];
      v24 = [(__CFArray *)v13->_opSpecific.store.uids count];
      v25 = 134218496;
      v26 = v22;
      v27 = 2048;
      v28 = v23;
      v29 = 2048;
      v30 = v24;
      _os_log_error_impl(&dword_2720B1000, v19, OS_LOG_TYPE_ERROR, "attempt to create an invalid store-flags offline operation: %lu true flags, %lu false flags, %lu uids", &v25, 0x20u);
    }

    v18 = 0;
  }

  else
  {
LABEL_3:
    v18 = v13;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (MFIMAPOperation)initWithUidsToCopy:(id)copy fromMailbox:(id)mailbox toMailbox:(id)toMailbox firstNewUid:(unsigned int)uid
{
  v33 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  mailboxCopy = mailbox;
  toMailboxCopy = toMailbox;
  v13 = [(MFIMAPOperation *)self initWithType:5 mailbox:mailboxCopy];
  if (!v13)
  {
    goto LABEL_8;
  }

  UidArrayFromStringArray = _createUidArrayFromStringArray(copyCopy);
  v13->_opSpecific.copy.srcUids = UidArrayFromStringArray;
  if (UidArrayFromStringArray)
  {
    Count = CFArrayGetCount(UidArrayFromStringArray);
    v13->_opSpecific.copy.dstUids = CFArrayCreateMutable(0, Count, 0);
    if (Count >= 1)
    {
      do
      {
        CFArrayAppendValue(v13->_opSpecific.copy.dstUids, uid++);
        --Count;
      }

      while (Count);
    }
  }

  else
  {
    v13->_opSpecific.copy.dstUids = 0;
  }

  v16 = [toMailboxCopy copy];
  destinationMailbox = v13->_opSpecific.copy.destinationMailbox;
  v13->_opSpecific.copy.destinationMailbox = v16;

  if (![(MFIMAPOperation *)v13 isValid])
  {
    v19 = vm_imap_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [copyCopy count];
      v23 = [(__CFArray *)v13->_opSpecific.copy.dstUids count];
      v24 = v13->_opSpecific.copy.destinationMailbox;
      v25 = 134218752;
      v26 = v22;
      v27 = 2048;
      v28 = v23;
      v29 = 2048;
      v30 = v24;
      v31 = 2048;
      v32 = [(NSString *)v24 length];
      _os_log_error_impl(&dword_2720B1000, v19, OS_LOG_TYPE_ERROR, "attempt to create an invalid copy-message offline operation: %lu srcUids, %lu dstUids, dstMailbox=%p (%lu)", &v25, 0x2Au);
    }

    v18 = 0;
  }

  else
  {
LABEL_8:
    v18 = v13;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (MFIMAPOperation)initWithAppendedUid:(unsigned int)uid approximateSize:(unsigned int)size flags:(id)flags internalDate:(id)date mailbox:(id)mailbox
{
  flagsCopy = flags;
  dateCopy = date;
  v14 = [(MFIMAPOperation *)self initWithType:4 mailbox:mailbox];
  v15 = v14;
  if (v14)
  {
    v14->_opSpecific.append.uid = uid;
    v16 = [flagsCopy copy];
    flags = v15->_opSpecific.append.flags;
    v15->_opSpecific.append.flags = v16;

    [dateCopy timeIntervalSinceReferenceDate];
    v15->_opSpecific.append.internalDate = v18;
    v15->_opSpecific.append.size = size;
  }

  return v15;
}

- (void)dealloc
{
  v3 = *(self + 8) & 7;
  if (v3 == 5)
  {
    srcUids = self->_opSpecific.copy.srcUids;
    if (srcUids)
    {
      CFRelease(srcUids);
    }

    dstUids = self->_opSpecific.copy.dstUids;
    if (dstUids)
    {
      goto LABEL_4;
    }
  }

  else if (v3 == 3)
  {
    dstUids = self->_opSpecific.store.uids;
    if (dstUids)
    {
LABEL_4:
      CFRelease(dstUids);
    }
  }

  v6.receiver = self;
  v6.super_class = MFIMAPOperation;
  [(MFIMAPOperation *)&v6 dealloc];
}

- (BOOL)isValid
{
  uids = [(NSString *)self->_mailboxName length];
  if (uids)
  {
    v4 = *(self + 8) & 7;
    if (v4 == 5)
    {
      srcUids = self->_opSpecific.copy.srcUids;
      if (srcUids)
      {
        Count = CFArrayGetCount(srcUids);
      }

      else
      {
        Count = 0;
      }

      dstUids = self->_opSpecific.copy.dstUids;
      if (dstUids)
      {
        v8 = CFArrayGetCount(dstUids);
      }

      else
      {
        v8 = 0;
      }

      LOBYTE(uids) = 0;
      if (Count && Count == v8)
      {
        uids = [(NSString *)self->_opSpecific.copy.destinationMailbox length];
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 != 3)
      {
LABEL_7:
        LOBYTE(uids) = 1;
        return uids;
      }

      uids = self->_opSpecific.store.uids;
      if (uids)
      {
        uids = CFArrayGetCount(uids);
        if (uids)
        {
          if ([(NSArray *)self->_opSpecific.store.trueFlags count])
          {
            goto LABEL_7;
          }

          uids = [(NSArray *)self->_opSpecific.store.falseFlags count];
LABEL_18:
          LOBYTE(uids) = uids != 0;
        }
      }
    }
  }

  return uids;
}

- (BOOL)isSourceOfTemporaryUid:(unsigned int)uid
{
  v4 = *(self + 8) & 7;
  if (v4 == 5)
  {
    dstUids = self->_opSpecific.copy.dstUids;
    if (dstUids)
    {
      v7.length = CFArrayGetCount(self->_opSpecific.copy.dstUids);
      v7.location = 0;
      return CFArrayGetLastIndexOfValue(dstUids, v7, uid) != -1;
    }
  }

  else if (v4 == 4)
  {
    return self->_opSpecific.append.uid == uid;
  }

  return 0;
}

- (BOOL)actsOnTemporaryUid:(unsigned int)uid
{
  v3 = *(self + 8);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = v3 & 7;
  if (v6 == 5)
  {
    v7 = 72;
  }

  else
  {
    if (v6 != 3)
    {
      return 0;
    }

    v7 = 40;
  }

  v8 = *(&self->super.isa + v7);
  if (v8)
  {
    v9.length = CFArrayGetCount(*(&self->super.isa + v7));
    v9.location = 0;
    return CFArrayGetFirstIndexOfValue(v8, v9, uid) != -1;
  }

  return 0;
}

- (void)expungeTemporaryUid:(unsigned int)uid
{
  v5 = *(self + 8);
  v6 = v5 & 7;
  if (v6 == 3)
  {
    if (v5 < 0)
    {
      uids = self->_opSpecific.store.uids;
      if (uids)
      {
        Count = CFArrayGetCount(uids);
        v18.location = 0;
        v18.length = Count;
        LastIndexOfValue = CFArrayGetLastIndexOfValue(self->_opSpecific.store.uids, v18, uid);
        if (LastIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(self->_opSpecific.store.uids, LastIndexOfValue);
          if (Count == 1)
          {
            v16 = self->_opSpecific.store.uids;
            if (v16)
            {
              CFRelease(v16);
              self->_opSpecific.store.uids = 0;
            }
          }
        }
      }
    }
  }

  else if (v6 == 5)
  {
    dstUids = self->_opSpecific.copy.dstUids;
    if (dstUids)
    {
      v8 = CFArrayGetCount(dstUids);
      v17.location = 0;
      v17.length = v8;
      v9 = CFArrayGetLastIndexOfValue(self->_opSpecific.copy.dstUids, v17, uid);
      if (v9 != -1)
      {
        v10 = v9;
        CFArrayRemoveValueAtIndex(self->_opSpecific.copy.dstUids, v9);
        CFArrayRemoveValueAtIndex(self->_opSpecific.copy.srcUids, v10);
        if (v8 == 1)
        {
          v11 = self->_opSpecific.copy.dstUids;
          if (v11)
          {
            CFRelease(v11);
            self->_opSpecific.copy.dstUids = 0;
          }

          srcUids = self->_opSpecific.copy.srcUids;
          if (srcUids)
          {
            CFRelease(srcUids);
            self->_opSpecific.copy.srcUids = 0;
          }
        }
      }
    }
  }

  else if (v6 == 4 && self->_opSpecific.append.uid == uid)
  {
    self->_opSpecific.append.uid = 0;
  }
}

- (unsigned)firstTemporaryUid
{
  selfCopy = self;
  v3 = *(self + 8) & 7;
  if (v3 == 5)
  {
    self = self->_opSpecific.copy.dstUids;
    if (self)
    {
      self = CFArrayGetCount(self);
      if (self)
      {
        LODWORD(self) = CFArrayGetValueAtIndex(selfCopy->_opSpecific.copy.dstUids, 0);
      }
    }
  }

  else if (v3 == 4)
  {
    LODWORD(self) = self->_opSpecific.append.uid;
  }

  else
  {
    LODWORD(self) = 0;
  }

  return self;
}

- (unsigned)lastTemporaryUid
{
  selfCopy = self;
  v3 = *(self + 8) & 7;
  if (v3 == 5)
  {
    self = self->_opSpecific.copy.dstUids;
    if (self)
    {
      self = CFArrayGetCount(self);
      if (self)
      {
        LODWORD(self) = CFArrayGetValueAtIndex(selfCopy->_opSpecific.copy.dstUids, &self[-1]._opSpecific.copy.destinationMailbox + 7);
      }
    }
  }

  else if (v3 == 4)
  {
    LODWORD(self) = self->_opSpecific.append.uid;
  }

  else
  {
    LODWORD(self) = 0;
  }

  return self;
}

- (unsigned)approximateSize
{
  v2 = *(self + 8) & 7;
  switch(v2)
  {
    case 5:
      return self->_opSpecific.copy.srcUids != 0;
    case 4:
      if (self->_opSpecific.append.uid)
      {
        return self->_opSpecific.append.size;
      }

      else
      {
        return 0;
      }

    case 3:
      v3 = vmovn_s64(vtstq_s64(*&self->_opSpecific.store.trueFlags, *&self->_opSpecific.store.trueFlags));
      return (v3.i8[4] & 1) - v3.i32[0];
    default:
      return 1;
  }
}

- (void)setUsesRealUids:(BOOL)uids
{
  if (uids)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x80;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (unsigned)sourceUidForTemporaryUid:(unsigned int)uid
{
  dstUids = self->_opSpecific.copy.dstUids;
  if (dstUids)
  {
    Count = CFArrayGetCount(dstUids);
    if (Count < 1 || (v9.length = Count, v9.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_opSpecific.copy.dstUids, v9, uid), FirstIndexOfValue == -1))
    {
      LODWORD(dstUids) = 0;
    }

    else
    {
      LODWORD(dstUids) = CFArrayGetValueAtIndex(self->_opSpecific.copy.srcUids, FirstIndexOfValue);
    }
  }

  return dstUids;
}

- (id)description
{
  v22.receiver = self;
  v22.super_class = MFIMAPOperation;
  v3 = [(MFIMAPOperation *)&v22 description];
  v4 = [v3 mutableCopy];

  v5 = *(self + 8) & 7;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [v4 appendFormat:@"CREATE [%@]", self->_mailboxName];
    }

    else if (v5 == 2)
    {
      [v4 appendFormat:@"DELETE [%@]", self->_mailboxName];
    }
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        mailboxName = self->_mailboxName;
        internalDate = [(MFIMAPOperation *)self internalDate];
        [v4 appendFormat:@"APPEND [%@] %@ {%u}", mailboxName, internalDate, self->_opSpecific.append.uid];

        goto LABEL_47;
      }

      if (v5 != 5)
      {
        goto LABEL_47;
      }

      v6 = self->_mailboxName;
      [v4 appendFormat:@"COPY [%@] [%@]", v6, self->_opSpecific.copy.destinationMailbox];
      if (self->_opSpecific.store.uids)
      {
        Count = CFArrayGetCount(self->_opSpecific.copy.srcUids);
        if (*(self + 8) < 0)
        {
          v8 = @"{";
        }

        else
        {
          v8 = CFSTR("(");
        }

        [v4 appendString:v8];
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            if (i)
            {
              [v4 appendString:{@", "}];
            }

            [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.copy.srcUids, i)];
          }
        }

        if (*(self + 8) < 0)
        {
          v10 = @"} ";
        }

        else
        {
          v10 = @" ");
        }

        [v4 appendString:v10];
        v11 = CFArrayGetCount(self->_opSpecific.copy.dstUids);
        [v4 appendString:@"{"];
        if (v11 >= 1)
        {
          for (j = 0; j != v11; ++j)
          {
            if (j)
            {
              [v4 appendString:{@", "}];
            }

            [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.copy.dstUids, j)];
          }
        }

        v13 = @"}";
        goto LABEL_46;
      }

LABEL_45:
      v13 = @" ** expunged **";
LABEL_46:
      [v4 appendString:v13];
      goto LABEL_47;
    }

    [v4 appendFormat:@"[%@] STORE ", self->_mailboxName];
    uids = self->_opSpecific.store.uids;
    if (!uids)
    {
      goto LABEL_45;
    }

    v15 = CFArrayGetCount(uids);
    if (*(self + 8) < 0)
    {
      v16 = @"{";
    }

    else
    {
      v16 = CFSTR("(");
    }

    [v4 appendString:v16];
    if (v15 >= 1)
    {
      for (k = 0; k != v15; ++k)
      {
        if (k)
        {
          [v4 appendString:{@", "}];
        }

        [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.store.uids, k)];
      }
    }

    if (*(self + 8) < 0)
    {
      v18 = @"}";
    }

    else
    {
      v18 = @"");
    }

    [v4 appendString:v18];
    if (self->_opSpecific.store.trueFlags)
    {
      [v4 appendFormat:@" <+FLAGS.SILENT%@>", self->_opSpecific.store.trueFlags];
    }

    if (self->_opSpecific.store.falseFlags)
    {
      [v4 appendFormat:@" <-FLAGS.SILENT%@> ", self->_opSpecific.store.falseFlags];
    }
  }

LABEL_47:

  return v4;
}

- (void)initWithType:(os_log_t)log mailbox:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "attempt to create an invalid offline operation of type %d with no mailbox name %p", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end