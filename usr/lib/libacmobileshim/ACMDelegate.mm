@interface ACMDelegate
- (ACMDelegate)init;
- (void)appleConnect:(id)a3 authenticationDidEndWithResponse:(id)a4;
@end

@implementation ACMDelegate

- (ACMDelegate)init
{
  v5.receiver = self;
  v5.super_class = ACMDelegate;
  v2 = [(ACMDelegate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ACMDelegate *)v2 setCopyTicketCompletion:0];
  }

  return v3;
}

- (void)appleConnect:(id)a3 authenticationDidEndWithResponse:(id)a4
{
  if ([a4 error])
  {
    NSLog(&cfstr_Authentication.isa, [a4 error]);
    v6 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v9 = [a4 userName];
    v10 = [a4 token];
    v6 = CFDataCreateMutable(v7, 0);
    v11 = [a4 userName];
    Length = CFStringGetLength([a4 token]);
    NSLog(&cfstr_Authentication_0.isa, v11, Length, [a4 token]);
    v13 = CFStringCreateWithFormat(v7, 0, @"%@/%d", v9, 1205);
    v14 = CFStringGetLength(v13);
    CFDataSetLength(v6, v14 + 1);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    v16 = CFDataGetLength(v6);
    CFStringGetCString(v13, MutableBytePtr, v16, 0x8000100u);
    v17 = CFStringGetLength(v10);
    CFDataSetLength(Mutable, v17 + 1);
    v18 = CFDataGetMutableBytePtr(Mutable);
    v19 = CFDataGetLength(Mutable);
    CFStringGetCString(v10, v18, v19, 0x8000100u);
    BytePtr = CFDataGetBytePtr(Mutable);
    v21 = CFDataGetLength(Mutable);
    CFDataAppendBytes(v6, BytePtr, v21 - 1);
    v22 = CFDataGetLength(v6);
    NSLog(&cfstr_SsodataLd.isa, v22, v6);
    CFRelease(v13);
    CFRelease(Mutable);
  }

  v23 = [(ACMDelegate *)self copyTicketCompletion];
  v23[2](v23, v6, [a4 error]);
  if (v6)
  {

    CFRelease(v6);
  }
}

@end