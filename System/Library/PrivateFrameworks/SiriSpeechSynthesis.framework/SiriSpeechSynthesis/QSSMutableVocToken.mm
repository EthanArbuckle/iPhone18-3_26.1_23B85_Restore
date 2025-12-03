@interface QSSMutableVocToken
- (QSSMutableVocToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)blob:(id)blob;
- (void)setBlob:(id)blob;
- (void)setOrthography:(id)orthography;
@end

@implementation QSSMutableVocToken

- (void)blob:(id)blob
{
  blobCopy = blob;
  blob = [(QSSMutableVocToken *)self blob];
  bytes = [blob bytes];
  blob2 = [(QSSMutableVocToken *)self blob];
  blobCopy[2](blobCopy, bytes, [blob2 length]);
}

- (void)setBlob:(id)blob
{
  v4 = [blob copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOrthography:(id)orthography
{
  v4 = [orthography copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableVocToken)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableVocToken;
  v2 = [(QSSMutableVocToken *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end