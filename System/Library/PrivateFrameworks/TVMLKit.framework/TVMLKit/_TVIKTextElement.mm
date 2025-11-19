@interface _TVIKTextElement
- (void)_stylesMarkedDirtyNotification:(id)a3;
- (void)dealloc;
- (void)setCachedAttributedString:(id)a3;
@end

@implementation _TVIKTextElement

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVIKTextElement;
  [(_TVIKTextElement *)&v4 dealloc];
}

- (void)setCachedAttributedString:(id)a3
{
  v4 = [a3 copy];
  cachedAttributedString = self->_cachedAttributedString;
  self->_cachedAttributedString = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:@"TVAppDocumentDidMarkStylesDirtyNotification" object:0];

  if (self->_cachedAttributedString)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [(_TVIKTextElement *)self appDocument];
    [v8 addObserver:self selector:sel__stylesMarkedDirtyNotification_ name:@"TVAppDocumentDidMarkStylesDirtyNotification" object:v7];
  }
}

- (void)_stylesMarkedDirtyNotification:(id)a3
{
  if ([(_TVIKTextElement *)self updateType]== 2 || [(_TVIKTextElement *)self updateType]== 4)
  {

    [(_TVIKTextElement *)self setCachedAttributedString:0];
  }
}

@end