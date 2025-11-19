@interface SHSheetActivityPresentationContext
- (id)description;
@end

@implementation SHSheetActivityPresentationContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(SHSheetActivityPresentationContext *)self shouldDismissBeforePresentation];
  v5 = NSStringFromBOOL();
  [(SHSheetActivityPresentationContext *)self shouldPresentOverCurrentContext];
  v6 = NSStringFromBOOL();
  [(SHSheetActivityPresentationContext *)self isCloudSharing];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@ shouldDismissBeforePresentation:%@ shouldPresentOverCurrentContext:%@ isCloudSharing:%@>", v4, v5, v6, v7];

  return v8;
}

@end