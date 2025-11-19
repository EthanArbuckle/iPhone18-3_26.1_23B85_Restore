@interface MFAttachmentPlaceholder
+ (BOOL)isPlaceholderSerializedRepresentation:(id)a3;
+ (id)_placeholderMagic;
+ (id)placeholder;
+ (id)placeholderFromSerializedRepresentation:(id)a3;
- (BOOL)useMailDrop;
- (MFAttachmentPlaceholder)init;
- (id)description;
- (id)fileURL;
- (id)serializedRepresentation;
- (unint64_t)fileSize;
- (void)dealloc;
- (void)setFileSize:(unint64_t)a3;
@end

@implementation MFAttachmentPlaceholder

+ (id)placeholder
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MFAttachmentPlaceholder)init
{
  v6.receiver = self;
  v6.super_class = MFAttachmentPlaceholder;
  v2 = [(MFAttachmentPlaceholder *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    jsonDictionary = v2->_jsonDictionary;
    v2->_jsonDictionary = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentPlaceholder;
  [(MFAttachmentPlaceholder *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MFAttachmentPlaceholder *)self fileName];
  v5 = [(MFAttachmentPlaceholder *)self fileSize];
  v6 = [(MFAttachmentPlaceholder *)self mimeType];
  v7 = [(MFAttachmentPlaceholder *)self fileURLString];
  v8 = [(MFAttachmentPlaceholder *)self contentID];
  v9 = [(MFAttachmentPlaceholder *)self useMailDrop];
  v10 = "SMTP";
  if (v9)
  {
    v10 = "MailDrop";
  }

  v11 = [v3 stringWithFormat:@"%@ %lu [%@] @ %@ : %@ [%s]", v4, v5, v6, v7, v8, v10];

  return v11;
}

- (unint64_t)fileSize
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"fileSize"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setFileSize:(unint64_t)a3
{
  jsonDictionary = self->_jsonDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)jsonDictionary setValue:v4 forKey:@"fileSize"];
}

- (id)fileURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MFAttachmentPlaceholder *)self fileURLString];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)useMailDrop
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"mailDrop"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)placeholderFromSerializedRepresentation:(id)a3
{
  v4 = a3;
  if ([a1 isPlaceholderSerializedRepresentation:v4])
  {
    v5 = [v4 subdataWithRange:{4, objc_msgSend(v4, "length") - 4}];
    if (v5)
    {
      v11 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v11];
      v7 = v6;
      v8 = 0;
      if (!v11 && v6)
      {
        v8 = +[MFAttachmentPlaceholder placeholder];
        v9 = [v7 mutableCopy];
        [v8 _setJSONDictionary:v9];
      }
    }

    else
    {
      v7 = vm_imap_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v7];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_placeholderMagic
{
  if (_placeholderMagic_onceToken != -1)
  {
    +[MFAttachmentPlaceholder _placeholderMagic];
  }

  v3 = _placeholderMagic_placeholderMagic;

  return v3;
}

uint64_t __44__MFAttachmentPlaceholder__placeholderMagic__block_invoke()
{
  v0 = [MEMORY[0x277CBEA90] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
  v1 = _placeholderMagic_placeholderMagic;
  _placeholderMagic_placeholderMagic = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)isPlaceholderSerializedRepresentation:(id)a3
{
  v4 = a3;
  if ([v4 length] < 0x35 || objc_msgSend(v4, "length") > 0x833)
  {
    v7 = 0;
  }

  else
  {
    v5 = [a1 _placeholderMagic];
    v6 = [v4 rangeOfData:v5 options:2 range:{0, 4}];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)serializedRepresentation
{
  jsonDictionary = self->_jsonDictionary;
  if (jsonDictionary)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:jsonDictionary options:0 error:&v7];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEB28] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
      [v4 appendData:v3];
    }

    else
    {
      v5 = vm_imap_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachmentPlaceholder *)v5 serializedRepresentation];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end