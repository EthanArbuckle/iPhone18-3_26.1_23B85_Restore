@interface SXTextTangierContainerInfo
- (NSSet)rangedExclusionPaths;
- (SXTextTangierContainerInfo)initWithContext:(id)a3 geometry:(id)a4 stylesheet:(id)a5 string:(id)a6 locale:(id)a7;
- (TSDRepDirectLayerHosting)directLayerHost;
- (void)setIsSelectable:(BOOL)a3;
- (void)setRangedExclusionPaths:(id)a3;
- (void)setShouldHyphenate:(BOOL)a3;
@end

@implementation SXTextTangierContainerInfo

- (SXTextTangierContainerInfo)initWithContext:(id)a3 geometry:(id)a4 stylesheet:(id)a5 string:(id)a6 locale:(id)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = SXTextTangierContainerInfo;
  v16 = [(TSDContainerInfo *)&v22 initWithContext:v12 geometry:a4];
  if (v16)
  {
    v17 = [(SXTextTangierStorage *)[SXComponentTextStorage alloc] initWithContext:v12 stylesheet:v13 storageKind:0 string:v14 locale:v15];
    storage = v16->_storage;
    v16->_storage = &v17->super;

    v19 = [(SXTextTangierContainerInfo *)v16 storage];
    v23[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(TSDContainerInfo *)v16 setChildInfos:v20];
  }

  return v16;
}

- (void)setIsSelectable:(BOOL)a3
{
  v3 = a3;
  self->_isSelectable = a3;
  v4 = [(SXTextTangierContainerInfo *)self storage];
  [v4 setIsSelectable:v3];
}

- (void)setShouldHyphenate:(BOOL)a3
{
  v3 = a3;
  self->_shouldHyphenate = a3;
  v4 = [(SXTextTangierContainerInfo *)self storage];
  [v4 setShouldHyphenate:v3];
}

- (NSSet)rangedExclusionPaths
{
  v2 = [(SXTextTangierContainerInfo *)self storage];
  v3 = [v2 rangedExclusionPaths];

  return v3;
}

- (void)setRangedExclusionPaths:(id)a3
{
  v4 = a3;
  v5 = [(SXTextTangierContainerInfo *)self storage];
  [v5 setRangedExclusionPaths:v4];
}

- (TSDRepDirectLayerHosting)directLayerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_directLayerHost);

  return WeakRetained;
}

@end