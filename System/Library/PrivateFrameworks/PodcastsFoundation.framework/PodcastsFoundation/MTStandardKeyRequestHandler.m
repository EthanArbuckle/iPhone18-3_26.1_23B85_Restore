@interface MTStandardKeyRequestHandler
+ (NSString)keyRequestLicenseErrorDomain;
- (void)loadCertificateDataWithCompletion:(id)a3;
- (void)loadKeyDataFor:(id)a3 account:(id)a4 completion:(id)a5;
@end

@implementation MTStandardKeyRequestHandler

+ (NSString)keyRequestLicenseErrorDomain
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (void)loadCertificateDataWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D8FFBEEC(sub_1D8FFEC64, v5);
}

- (void)loadKeyDataFor:(id)a3 account:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for ContentKeyRequest(0);
  v8 = sub_1D91785FC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  sub_1D8FFCF28(v8, a4, sub_1D8FFEC5C, v9);
}

@end