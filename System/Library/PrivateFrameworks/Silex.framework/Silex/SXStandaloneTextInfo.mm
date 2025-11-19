@interface SXStandaloneTextInfo
- (SXStandaloneTextInfo)initWithStorage:(id)a3;
- (id)childInfos;
- (void)dealloc;
@end

@implementation SXStandaloneTextInfo

- (SXStandaloneTextInfo)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXStandaloneTextInfo;
  v6 = [(SXStandaloneTextInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    [(TSWPStorage *)v7->_storage setParentInfo:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(TSWPStorage *)self->_storage setParentInfo:0];
  v3.receiver = self;
  v3.super_class = SXStandaloneTextInfo;
  [(SXStandaloneTextInfo *)&v3 dealloc];
}

- (id)childInfos
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(SXStandaloneTextInfo *)self storage];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end