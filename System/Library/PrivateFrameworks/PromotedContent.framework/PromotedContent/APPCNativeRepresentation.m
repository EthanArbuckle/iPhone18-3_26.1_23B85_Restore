@interface APPCNativeRepresentation
- (APPCNativeRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 privacyMarkerPosition:(int64_t)a6 articleID:(id)a7 articleTitle:(id)a8 adSponsor:(id)a9 campaignData:(id)a10 adSize:(CGSize)a11 adPolicyData:(id)a12;
@end

@implementation APPCNativeRepresentation

- (APPCNativeRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 privacyMarkerPosition:(int64_t)a6 articleID:(id)a7 articleTitle:(id)a8 adSponsor:(id)a9 campaignData:(id)a10 adSize:(CGSize)a11 adPolicyData:(id)a12
{
  height = a11.height;
  width = a11.width;
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v38 = self;
  v16 = sub_1C1B945F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  if (a7)
  {
    v34 = sub_1C1B94D88();
    v21 = v20;
  }

  else
  {
    v34 = 0;
    v21 = 0;
  }

  v22 = a9;
  if (a8)
  {
    a8 = sub_1C1B94D88();
    v24 = v23;
    if (a9)
    {
LABEL_6:
      v25 = sub_1C1B94D88();
      v22 = v26;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_9:
  v27 = a10;
  v28 = a12;
  if (v27)
  {
    v29 = sub_1C1B94D88();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  return sub_1C1B03C98(v19, v35, v36, v37, v34, v21, a8, v24, width, height, v25, v22, v29, v31, v28);
}

@end