@interface SXTextTangierContainerInfo
- (NSSet)rangedExclusionPaths;
- (SXTextTangierContainerInfo)initWithContext:(id)context geometry:(id)geometry stylesheet:(id)stylesheet string:(id)string locale:(id)locale;
- (TSDRepDirectLayerHosting)directLayerHost;
- (void)setIsSelectable:(BOOL)selectable;
- (void)setRangedExclusionPaths:(id)paths;
- (void)setShouldHyphenate:(BOOL)hyphenate;
@end

@implementation SXTextTangierContainerInfo

- (SXTextTangierContainerInfo)initWithContext:(id)context geometry:(id)geometry stylesheet:(id)stylesheet string:(id)string locale:(id)locale
{
  v23[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  stylesheetCopy = stylesheet;
  stringCopy = string;
  localeCopy = locale;
  v22.receiver = self;
  v22.super_class = SXTextTangierContainerInfo;
  v16 = [(TSDContainerInfo *)&v22 initWithContext:contextCopy geometry:geometry];
  if (v16)
  {
    v17 = [(SXTextTangierStorage *)[SXComponentTextStorage alloc] initWithContext:contextCopy stylesheet:stylesheetCopy storageKind:0 string:stringCopy locale:localeCopy];
    storage = v16->_storage;
    v16->_storage = &v17->super;

    storage = [(SXTextTangierContainerInfo *)v16 storage];
    v23[0] = storage;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(TSDContainerInfo *)v16 setChildInfos:v20];
  }

  return v16;
}

- (void)setIsSelectable:(BOOL)selectable
{
  selectableCopy = selectable;
  self->_isSelectable = selectable;
  storage = [(SXTextTangierContainerInfo *)self storage];
  [storage setIsSelectable:selectableCopy];
}

- (void)setShouldHyphenate:(BOOL)hyphenate
{
  hyphenateCopy = hyphenate;
  self->_shouldHyphenate = hyphenate;
  storage = [(SXTextTangierContainerInfo *)self storage];
  [storage setShouldHyphenate:hyphenateCopy];
}

- (NSSet)rangedExclusionPaths
{
  storage = [(SXTextTangierContainerInfo *)self storage];
  rangedExclusionPaths = [storage rangedExclusionPaths];

  return rangedExclusionPaths;
}

- (void)setRangedExclusionPaths:(id)paths
{
  pathsCopy = paths;
  storage = [(SXTextTangierContainerInfo *)self storage];
  [storage setRangedExclusionPaths:pathsCopy];
}

- (TSDRepDirectLayerHosting)directLayerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_directLayerHost);

  return WeakRetained;
}

@end