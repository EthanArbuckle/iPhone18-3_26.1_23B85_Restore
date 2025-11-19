@interface WiFiTrustCertificateViewController
- (WiFiTrustCertificateViewController)initWithCertificateChain:(id)a3;
- (void)loadView;
- (void)trustCertificateViewController:(id)a3 finishedWithReturnCode:(int)a4;
@end

@implementation WiFiTrustCertificateViewController

- (WiFiTrustCertificateViewController)initWithCertificateChain:(id)a3
{
  v4 = a3;
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

  v6 = v4;
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

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
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
        [v8 addObject:v14];
        CFRelease(v15);
      }

      cf = 0;
      if (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
      {
        (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)(&cf);
        if (cf)
        {
          [v9 addObject:?];
          CFRelease(cf);
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }

  if ([v8 count])
  {
    cf = 0;
    if (SecTrustCreateWithCertificates(v8, v9, &cf))
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
  v3 = [(WiFiTrustCertificateViewController *)self view];
  v4 = [(TrustCertificateViewController *)self->_trustViewController view];
  [v3 addSubview:v4];

  v5 = [(WiFiTrustCertificateViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(TrustCertificateViewController *)self->_trustViewController view];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (void)trustCertificateViewController:(id)a3 finishedWithReturnCode:(int)a4
{
  NSLog(&cfstr_SReturncodeD.isa, a2, a3, "[WiFiTrustCertificateViewController trustCertificateViewController:finishedWithReturnCode:]", a4);
  v6 = [(WiFiTrustCertificateViewController *)self handler];
  v6[2](v6, a4 == 1);
}

@end