@interface SXIssueCoverViewProvider
- (SXIssueCoverViewProvider)initWithLayoutAttributesFactory:(id)factory;
- (id)viewForIssueCover:(id)cover;
- (void)presentIssueCover:(id)cover onView:(id)view options:(id)options;
@end

@implementation SXIssueCoverViewProvider

- (SXIssueCoverViewProvider)initWithLayoutAttributesFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = SXIssueCoverViewProvider;
  v6 = [(SXIssueCoverViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutOptionsFactory, factory);
  }

  return v7;
}

- (id)viewForIssueCover:(id)cover
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);

  return v3;
}

- (void)presentIssueCover:(id)cover onView:(id)view options:(id)options
{
  optionsCopy = options;
  viewCopy = view;
  coverCopy = cover;
  v11 = [SXIssueCoverLayoutOptions alloc];
  [optionsCopy size];
  v13 = v12;

  v17 = [(SXIssueCoverLayoutOptions *)v11 initWithBoundingWidth:v13];
  layoutOptionsFactory = [(SXIssueCoverViewProvider *)self layoutOptionsFactory];
  v15 = [layoutOptionsFactory createAttributesWithIssueCover:coverCopy options:v17];

  [v15 frame];
  [viewCopy setFrame:?];
  v16 = [MEMORY[0x1E69DC888] colorWithRed:0.909803922 green:0.909803922 blue:0.909803922 alpha:1.0];
  [viewCopy setBackgroundColor:v16];
}

@end