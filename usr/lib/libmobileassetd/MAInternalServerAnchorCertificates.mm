@interface MAInternalServerAnchorCertificates
@end

@implementation MAInternalServerAnchorCertificates

void __MAInternalServerAnchorCertificates_block_invoke(id a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  MAInternalServerAnchorCertificates_anchors = Mutable;
  v2 = CFDataCreateWithBytesNoCopy(0, APPLE_CORPORATE_ROOT_CA_2, 585, kCFAllocatorNull);
  v3 = SecCertificateCreateWithData(0, v2);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);

  CFRelease(v2);
}

@end