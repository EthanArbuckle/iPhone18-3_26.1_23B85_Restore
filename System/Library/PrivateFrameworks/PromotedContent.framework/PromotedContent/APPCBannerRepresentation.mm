@interface APPCBannerRepresentation
- (APPCBannerRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition privacyMarkerType:(int64_t)markerType adSize:(CGSize)size tapAction:(id)action adTag:(id)self0 outstreamVideoInfo:(id)self1 adamIdentifier:(id)self2 tapActionTemplateType:(int64_t)self3 adPolicyData:(id)self4;
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

- (APPCBannerRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position privacyMarkerPosition:(int64_t)markerPosition privacyMarkerType:(int64_t)markerType adSize:(CGSize)size tapAction:(id)action adTag:(id)self0 outstreamVideoInfo:(id)self1 adamIdentifier:(id)self2 tapActionTemplateType:(int64_t)self3 adPolicyData:(id)self4
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  markerTypeCopy = markerType;
  positionCopy = position;
  markerPositionCopy = markerPosition;
  typeCopy = type;
  tagCopy = tag;
  v18 = sub_1C1B945F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  if (tag)
  {
    tagCopy = sub_1C1B94D88();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  actionCopy = action;
  infoCopy = info;
  adamIdentifierCopy = adamIdentifier;
  dataCopy = data;
  v28 = sub_1C1B085DC(v21, typeCopy, positionCopy, markerPositionCopy, markerTypeCopy, action, tagCopy, v23, width, height, info, adamIdentifier, templateType, data);

  return v28;
}

@end