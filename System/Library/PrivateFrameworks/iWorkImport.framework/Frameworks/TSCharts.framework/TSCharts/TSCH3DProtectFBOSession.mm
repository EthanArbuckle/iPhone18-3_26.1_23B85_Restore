@interface TSCH3DProtectFBOSession
+ (void)performBlockWithFBO:(id)o session:(id)session isProtecting:(BOOL)protecting block:(id)block;
@end

@implementation TSCH3DProtectFBOSession

+ (void)performBlockWithFBO:(id)o session:(id)session isProtecting:(BOOL)protecting block:(id)block
{
  protectingCopy = protecting;
  oCopy = o;
  sessionCopy = session;
  blockCopy = block;
  if (protectingCopy)
  {
    objc_msgSend_protectInSession_unprotectOnFail_(oCopy, v10, v12, v13, v14, sessionCopy, 0);
  }

  blockCopy[2](blockCopy);
  if (protectingCopy)
  {
    objc_msgSend_unprotectInSession_clearOnFailProtection_(oCopy, v15, v16, v17, v18, sessionCopy, 0);
  }
}

@end