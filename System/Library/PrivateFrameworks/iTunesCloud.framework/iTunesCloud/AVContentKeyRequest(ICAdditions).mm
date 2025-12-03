@interface AVContentKeyRequest(ICAdditions)
- (id)ic_description;
@end

@implementation AVContentKeyRequest(ICAdditions)

- (id)ic_description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  identifier = [self identifier];
  v5 = [v2 stringWithFormat:@"<%@ %p (%@, status:%d, persistable:%d)>", v3, self, identifier, objc_msgSend(self, "status"), objc_msgSend(self, "canProvidePersistableContentKey")];

  return v5;
}

@end