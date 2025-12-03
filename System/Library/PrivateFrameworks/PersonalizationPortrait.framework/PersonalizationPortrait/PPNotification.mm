@interface PPNotification
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNotification:(id)notification;
- (PPNotification)initWithBundleId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message date:(id)date;
- (PPNotification)initWithCoder:(id)coder;
- (PPNotification)initWithCurrentDateAndBundleId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPNotification

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPNotification: bundleId: %@ title.length: %tu subtitle.length %tu message.length: %tu>", self->_bundleId, -[NSString length](self->_title, "length"), -[NSString length](self->_subtitle, "length"), -[NSString length](self->_message, "length")];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPNotification *)self isEqualToNotification:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNotification:(id)notification
{
  notificationCopy = notification;
  p_isa = &notificationCopy->super.isa;
  if (notificationCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if (notificationCopy)
    {
      v6 = self->_bundleId;
      v7 = p_isa[1];
      if (v6 | v7)
      {
        v12 = v7;
        LOBYTE(v13) = 0;
        if (!v6 || !v7)
        {
          goto LABEL_30;
        }

        v13 = [(NSDate *)v6 isEqualToString:v7];

        if (!v13)
        {
          goto LABEL_31;
        }
      }

      v6 = self->_title;
      v8 = p_isa[2];
      if (v6 | v8)
      {
        v12 = v8;
        LOBYTE(v13) = 0;
        if (!v6 || !v8)
        {
          goto LABEL_30;
        }

        v13 = [(NSDate *)v6 isEqualToString:v8];

        if (!v13)
        {
          goto LABEL_31;
        }
      }

      v6 = self->_subtitle;
      v9 = p_isa[3];
      if (v6 | v9)
      {
        v12 = v9;
        LOBYTE(v13) = 0;
        if (!v6 || !v9)
        {
          goto LABEL_30;
        }

        v13 = [(NSDate *)v6 isEqualToString:v9];

        if (!v13)
        {
          goto LABEL_31;
        }
      }

      v6 = self->_message;
      v10 = p_isa[4];
      if (!(v6 | v10))
      {
LABEL_7:
        v6 = self->_date;
        v11 = p_isa[5];
        if (v6 | v11)
        {
          v12 = v11;
          LOBYTE(v13) = 0;
          if (v6 && v11)
          {
            LOBYTE(v13) = [(NSDate *)v6 isEqualToDate:v11];
          }
        }

        else
        {
          v12 = 0;
          v6 = 0;
          LOBYTE(v13) = 1;
        }

        goto LABEL_30;
      }

      v12 = v10;
      LOBYTE(v13) = 0;
      if (v6 && v10)
      {
        v13 = [(NSDate *)v6 isEqualToString:v10];

        if (!v13)
        {
          goto LABEL_31;
        }

        goto LABEL_7;
      }

LABEL_30:

      goto LABEL_31;
    }

    LOBYTE(v13) = 0;
  }

LABEL_31:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_title hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_subtitle hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_message hash]- v5 + 32 * v5;
  return [(NSDate *)self->_date hash]- v6 + 32 * v6;
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bid"];
  [coderCopy encodeObject:self->_title forKey:@"tit"];
  [coderCopy encodeObject:self->_subtitle forKey:@"sub"];
  [coderCopy encodeObject:self->_message forKey:@"mes"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (PPNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tit"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sub"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mes"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  if (v5 && v8 && v9)
  {
    self = [(PPNotification *)self initWithBundleId:v5 title:v6 subtitle:v7 message:v8 date:v9];
    selfCopy = self;
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_ERROR, "PPNotification:initWithCoder: decoded illegal nil property", v13, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PPNotification)initWithBundleId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message date:(id)date
{
  idCopy = id;
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  dateCopy = date;
  if (idCopy)
  {
    if (messageCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPNotification.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    if (dateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPNotification.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

  if (!messageCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (dateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPNotification.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = PPNotification;
  v17 = [(PPNotification *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, id);
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v18->_subtitle, subtitle);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_date, date);
  }

  return v18;
}

- (PPNotification)initWithCurrentDateAndBundleId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message
{
  messageCopy = message;
  subtitleCopy = subtitle;
  titleCopy = title;
  idCopy = id;
  v14 = objc_opt_new();
  v15 = [(PPNotification *)self initWithBundleId:idCopy title:titleCopy subtitle:subtitleCopy message:messageCopy date:v14];

  return v15;
}

@end