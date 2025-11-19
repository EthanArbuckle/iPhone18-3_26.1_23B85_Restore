@interface SCUIMoreHelpContextMenuContainer
- (SCUIMoreHelpContextMenuContainer)initWithOptions:(int64_t)a3 contextDictionary:(id)a4 interventionType:(int64_t)a5;
@end

@implementation SCUIMoreHelpContextMenuContainer

- (SCUIMoreHelpContextMenuContainer)initWithOptions:(int64_t)a3 contextDictionary:(id)a4 interventionType:(int64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SCUIMoreHelpContextMenuContainer;
  v9 = [(SCUIMoreHelpContextMenuContainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_options = a3;
    v11 = [v8 copy];
    contextDictionary = v10->_contextDictionary;
    v10->_contextDictionary = v11;

    v10->_interventionType = a5;
  }

  return v10;
}

@end