@interface WiFiTrustCertificateViewController
- (WiFiTrustCertificateViewController)initWithCertificateChain:(id)chain;
- (void)loadView;
- (void)trustCertificateViewController:(id)controller finishedWithReturnCode:(int)code;
@end

@implementation WiFiTrustCertificateViewController

- (WiFiTrustCertificateViewController)initWithCertificateChain:(id)chain
{
  chainCopy = chain;
  v20.receiver = self;
  v20.super_class = WiFiTrustCertificateViewController;
  v5 = [(WiFiTrustCertificateViewController *)&v20 init];
  if (!v5)
  {
    v16 = 0;
LABEL_21:

    v5 = 0;
    goto LABEL_22;
  }

  v6 = chainCopy;
  v7 = WFCreateSecTrustFromCertificateChain___eapLibraryPointer;
  if (!WFCreateSecTrustFromCertificateChain___eapLibraryPointer)
  {
    v7 = dlopen("/System/Library/PrivateFrameworks/EAP8021X.framework/EAP8021X", 1);
    WFCreateSecTrustFromCertificateChain___eapLibraryPointer = v7;
  }

  if (v7 && !WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
  {
    WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy = dlsym(v7, "EAPSecPolicyCopy");
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v10 = [v6 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *MEMORY[0x277CBECE8];
    do
    {
      v14 = SecCertificateCreateWithData(v13, [v6 objectAtIndex:v12]);
      if (v14)
      {
        v15 = v14;
        [array addObject:v14];
        CFRelease(v15);
      }

      cf = 0;
      if (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
      {
        (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)(&cf);
        if (cf)
        {
          [array2 addObject:?];
          CFRelease(cf);
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }

  if ([array count])
  {
    cf = 0;
    if (SecTrustCreateWithCertificates(array, array2, &cf))
    {
      v16 = 0;
    }

    else
    {
      v16 = cf;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x277CF9700]) initWithTrust:v16 action:2 delegate:v5];
  trustViewController = v5->_trustViewController;
  v5->_trustViewController = v17;

  if (!v5->_trustViewController)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v16)
  {
    CFRelease(v16);
  }

  return v5;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = WiFiTrustCertificateViewController;
  [(WiFiTrustCertificateViewController *)&v15 loadView];
  [(WiFiTrustCertificateViewController *)self addChildViewController:self->_trustViewController];
  view = [(WiFiTrustCertificateViewController *)self view];
  view2 = [(TrustCertificateViewController *)self->_trustViewController view];
  [view addSubview:view2];

  view3 = [(WiFiTrustCertificateViewController *)self view];
  [view3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view4 = [(TrustCertificateViewController *)self->_trustViewController view];
  [view4 setFrame:{v7, v9, v11, v13}];
}

- (void)trustCertificateViewController:(id)controller finishedWithReturnCode:(int)code
{
  NSLog(&cfstr_SReturncodeD.isa, a2, controller, "[WiFiTrustCertificateViewController trustCertificateViewController:finishedWithReturnCode:]", code);
  handler = [(WiFiTrustCertificateViewController *)self handler];
  handler[2](handler, code == 1);
}

@end