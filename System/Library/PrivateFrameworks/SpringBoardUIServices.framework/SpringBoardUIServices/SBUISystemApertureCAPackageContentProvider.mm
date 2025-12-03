@interface SBUISystemApertureCAPackageContentProvider
- (CGSize)intrinsicPackageSize;
- (SBUISystemApertureCAPackageContentProvider)initWithPackageName:(id)name inBundle:(id)bundle;
- (SBUISystemApertureCAPackageContentProvider)initWithURL:(id)l;
- (void)setIntrinsicPackageSize:(CGSize)size;
@end

@implementation SBUISystemApertureCAPackageContentProvider

- (SBUISystemApertureCAPackageContentProvider)initWithPackageName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v9 = bundleCopy;
  if (!nameCopy)
  {
    [SBUISystemApertureCAPackageContentProvider initWithPackageName:a2 inBundle:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBUISystemApertureCAPackageContentProvider initWithPackageName:a2 inBundle:self];
    goto LABEL_3;
  }

  if (!bundleCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(BSUICAPackageView *)[_SBUISystemApertureCAPackageView alloc] initWithPackageName:nameCopy inBundle:v9];
  packageView = self->_packageView;
  self->_packageView = v10;

  v12 = [(SBUISystemApertureAspectFittingContentProvider *)self initWithView:self->_packageView];
  return v12;
}

- (SBUISystemApertureCAPackageContentProvider)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [(SBUISystemApertureCAPackageContentProvider *)a2 initWithURL:?];
  }

  v6 = [(BSUICAPackageView *)[_SBUISystemApertureCAPackageView alloc] initWithURL:lCopy];
  packageView = self->_packageView;
  self->_packageView = v6;

  v8 = [(SBUISystemApertureAspectFittingContentProvider *)self initWithView:self->_packageView];
  return v8;
}

- (void)setIntrinsicPackageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SBUISystemApertureCAPackageContentProvider *)self intrinsicPackageSize];
  if (width != v7 || height != v6)
  {
    [(SBUISystemApertureCAPackageContentProvider *)self setIntrinsicPackageSize:height];
  }
}

- (CGSize)intrinsicPackageSize
{
  packageView = self->_packageView;
  if (packageView)
  {
    p_width = &packageView->_intrinsicPackageSize.width;
    v4 = *p_width;
    v5 = p_width[1];
  }

  else
  {
    v4 = OUTLINED_FUNCTION_0_6();
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)initWithPackageName:(uint64_t)a1 inBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureCAPackageContentProvider.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

- (void)initWithPackageName:(uint64_t)a1 inBundle:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureCAPackageContentProvider.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureCAPackageContentProvider.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
}

- (void)setIntrinsicPackageSize:(double)a3 .cold.1(void *a1, double a2, double a3)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = (v4 + 480);
    *v5 = a2;
    v5[1] = a3;
  }

  v6 = [a1 contentContainer];
  [v6 preferredContentSizeDidInvalidateForContentViewProvider:a1];
}

@end