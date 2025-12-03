@interface MFContentErrorDocument
- (MFContentErrorDocument)initWithMimePart:(id)part;
- (NSString)content;
- (void)dealloc;
@end

@implementation MFContentErrorDocument

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFContentErrorDocument;
  [(MFContentErrorDocument *)&v2 dealloc];
}

- (MFContentErrorDocument)initWithMimePart:(id)part
{
  v17[1] = *MEMORY[0x277D85DE8];
  partCopy = part;
  v15.receiver = self;
  v15.super_class = MFContentErrorDocument;
  v5 = [(MFContentErrorDocument *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    type = [partCopy type];
    subtype = [partCopy subtype];
    v9 = [v6 stringWithFormat:@"This message cannot be displayed because of the way it is formatted. Ask the sender to send it again using a different format or email program.\n\n%@/%@", type, subtype];

    v16 = *MEMORY[0x277CCA450];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [MEMORY[0x277CCA9B8] mf_decodeFailedErrorWithUserInfo:v10];

    error = v5->_error;
    v5->_error = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)content
{
  error = [(MFContentErrorDocument *)self error];
  localizedDescription = [error localizedDescription];

  return localizedDescription;
}

@end