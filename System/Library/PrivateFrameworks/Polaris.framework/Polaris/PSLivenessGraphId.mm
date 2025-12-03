@interface PSLivenessGraphId
- (PSLivenessGraphId)initWithGraphName:(id)name executionSessionKey:(int)key;
@end

@implementation PSLivenessGraphId

- (PSLivenessGraphId)initWithGraphName:(id)name executionSessionKey:(int)key
{
  nameCopy = name;
  if ([nameCopy length] && (v11.receiver = self, v11.super_class = PSLivenessGraphId, v8 = -[PSLivenessGraphId init](&v11, sel_init), (self = v8) != 0))
  {
    objc_storeStrong(&v8->_graphName, name);
    self->_executionSessionKey = key;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end