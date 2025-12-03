@interface RBSMacAppProcessIdentity
- (id)_initMacAppWithInfo:(id)info auid:(unsigned int)auid uuid:(id)uuid;
- (id)_initMacAppWithLabel:(id)label bundleID:(id)d personaString:(id)string auid:(unsigned int)auid platform:(int)platform;
@end

@implementation RBSMacAppProcessIdentity

- (id)_initMacAppWithLabel:(id)label bundleID:(id)d personaString:(id)string auid:(unsigned int)auid platform:(int)platform
{
  labelCopy = label;
  dCopy = d;
  stringCopy = string;
  __assert_rtn("[RBSMacAppProcessIdentity _initMacAppWithLabel:bundleID:personaString:auid:platform:]", "RBSProcessIdentity+App.m", 492, "false");
}

- (id)_initMacAppWithInfo:(id)info auid:(unsigned int)auid uuid:(id)uuid
{
  infoCopy = info;
  uuidCopy = uuid;
  __assert_rtn("[RBSMacAppProcessIdentity _initMacAppWithInfo:auid:uuid:]", "RBSProcessIdentity+App.m", 497, "false");
}

@end