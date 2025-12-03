@interface MTStandardKeyRequestHandler
+ (NSString)keyRequestLicenseErrorDomain;
- (void)loadCertificateDataWithCompletion:(id)completion;
- (void)loadKeyDataFor:(id)for account:(id)account completion:(id)completion;
@end

@implementation MTStandardKeyRequestHandler

+ (NSString)keyRequestLicenseErrorDomain
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (void)loadCertificateDataWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D8FFBEEC(sub_1D8FFEC64, v5);
}

- (void)loadKeyDataFor:(id)for account:(id)account completion:(id)completion
{
  v7 = _Block_copy(completion);
  type metadata accessor for ContentKeyRequest(0);
  v8 = sub_1D91785FC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  accountCopy = account;
  selfCopy = self;
  sub_1D8FFCF28(v8, account, sub_1D8FFEC5C, v9);
}

@end