@interface SCUIMoreHelpContextMenuContainer
- (SCUIMoreHelpContextMenuContainer)initWithOptions:(int64_t)options contextDictionary:(id)dictionary interventionType:(int64_t)type;
@end

@implementation SCUIMoreHelpContextMenuContainer

- (SCUIMoreHelpContextMenuContainer)initWithOptions:(int64_t)options contextDictionary:(id)dictionary interventionType:(int64_t)type
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SCUIMoreHelpContextMenuContainer;
  v9 = [(SCUIMoreHelpContextMenuContainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_options = options;
    v11 = [dictionaryCopy copy];
    contextDictionary = v10->_contextDictionary;
    v10->_contextDictionary = v11;

    v10->_interventionType = type;
  }

  return v10;
}

@end