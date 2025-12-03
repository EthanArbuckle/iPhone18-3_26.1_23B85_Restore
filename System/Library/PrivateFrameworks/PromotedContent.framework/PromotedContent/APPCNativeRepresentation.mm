@interface APPCNativeRepresentation
- (APPCNativeRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition articleID:(id)d articleTitle:(id)title adSponsor:(id)sponsor campaignData:(id)self0 adSize:(CGSize)self1 adPolicyData:(id)self2;
@end

@implementation APPCNativeRepresentation

- (APPCNativeRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition articleID:(id)d articleTitle:(id)title adSponsor:(id)sponsor campaignData:(id)self0 adSize:(CGSize)self1 adPolicyData:(id)self2
{
  height = size.height;
  width = size.width;
  positionCopy = position;
  markerPositionCopy = markerPosition;
  typeCopy = type;
  selfCopy = self;
  v16 = sub_1C1B945F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  if (d)
  {
    v34 = sub_1C1B94D88();
    v21 = v20;
  }

  else
  {
    v34 = 0;
    v21 = 0;
  }

  sponsorCopy = sponsor;
  if (title)
  {
    title = sub_1C1B94D88();
    v24 = v23;
    if (sponsor)
    {
LABEL_6:
      v25 = sub_1C1B94D88();
      sponsorCopy = v26;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
    if (sponsor)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_9:
  dataCopy = data;
  policyDataCopy = policyData;
  if (dataCopy)
  {
    v29 = sub_1C1B94D88();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  return sub_1C1B03C98(v19, typeCopy, positionCopy, markerPositionCopy, v34, v21, title, v24, width, height, v25, sponsorCopy, v29, v31, policyDataCopy);
}

@end