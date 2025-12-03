@interface _TVIKTextElement
- (void)_stylesMarkedDirtyNotification:(id)notification;
- (void)dealloc;
- (void)setCachedAttributedString:(id)string;
@end

@implementation _TVIKTextElement

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVIKTextElement;
  [(_TVIKTextElement *)&v4 dealloc];
}

- (void)setCachedAttributedString:(id)string
{
  v4 = [string copy];
  cachedAttributedString = self->_cachedAttributedString;
  self->_cachedAttributedString = v4;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVAppDocumentDidMarkStylesDirtyNotification" object:0];

  if (self->_cachedAttributedString)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    appDocument = [(_TVIKTextElement *)self appDocument];
    [defaultCenter2 addObserver:self selector:sel__stylesMarkedDirtyNotification_ name:@"TVAppDocumentDidMarkStylesDirtyNotification" object:appDocument];
  }
}

- (void)_stylesMarkedDirtyNotification:(id)notification
{
  if ([(_TVIKTextElement *)self updateType]== 2 || [(_TVIKTextElement *)self updateType]== 4)
  {

    [(_TVIKTextElement *)self setCachedAttributedString:0];
  }
}

@end