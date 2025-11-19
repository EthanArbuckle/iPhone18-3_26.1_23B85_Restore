@interface TSCH3DProtectFBOSession
+ (void)performBlockWithFBO:(id)a3 session:(id)a4 isProtecting:(BOOL)a5 block:(id)a6;
@end

@implementation TSCH3DProtectFBOSession

+ (void)performBlockWithFBO:(id)a3 session:(id)a4 isProtecting:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v19 = a3;
  v9 = a4;
  v11 = a6;
  if (v7)
  {
    objc_msgSend_protectInSession_unprotectOnFail_(v19, v10, v12, v13, v14, v9, 0);
  }

  v11[2](v11);
  if (v7)
  {
    objc_msgSend_unprotectInSession_clearOnFailProtection_(v19, v15, v16, v17, v18, v9, 0);
  }
}

@end