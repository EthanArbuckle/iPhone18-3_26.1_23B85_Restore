@interface _SFPBURL(SearchFoundationTypeNaming)
- (id)_siriui_protobufTypeName;
@end

@implementation _SFPBURL(SearchFoundationTypeNaming)

- (id)_siriui_protobufTypeName
{
  v0 = MEMORY[0x277CCACA8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v2 substringFromIndex:{objc_msgSend(@"_SFPB", "length")}];
  v4 = [v0 stringWithFormat:@"searchfoundation.%@", v3];

  return v4;
}

@end