@interface APPCBannerRepresentation
- (APPCBannerRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 privacyMarkerPosition:(int64_t)a6 privacyMarkerType:(int64_t)a7 adSize:(CGSize)a8 tapAction:(id)a9 adTag:(id)a10 outstreamVideoInfo:(id)a11 adamIdentifier:(id)a12 tapActionTemplateType:(int64_t)a13 adPolicyData:(id)a14;
- (NSString)adTag;
@end

@implementation APPCBannerRepresentation

- (NSString)adTag
{
  if (*(self + OBJC_IVAR___APPCBannerRepresentation_adTag + 8))
  {
    v2 = *(self + OBJC_IVAR___APPCBannerRepresentation_adTag);
    v3 = *(self + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);

    v4 = sub_1C1B94D78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (APPCBannerRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 privacyMarkerPosition:(int64_t)a6 privacyMarkerType:(int64_t)a7 adSize:(CGSize)a8 tapAction:(id)a9 adTag:(id)a10 outstreamVideoInfo:(id)a11 adamIdentifier:(id)a12 tapActionTemplateType:(int64_t)a13 adPolicyData:(id)a14
{
  height = a8.height;
  width = a8.width;
  v34 = self;
  v35 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v17 = a10;
  v18 = sub_1C1B945F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  if (a10)
  {
    v17 = sub_1C1B94D88();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a9;
  v25 = a11;
  v26 = a12;
  v27 = a14;
  v28 = sub_1C1B085DC(v21, v31, v32, v33, v35, a9, v17, v23, width, height, a11, a12, a13, a14);

  return v28;
}

@end