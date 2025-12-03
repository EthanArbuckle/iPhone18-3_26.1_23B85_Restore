@interface PFVideoAdjustments(PUReviewAdditions)
+ (id)videoAdjustmentsFromAssetAdjustmentsIfRecognized:()PUReviewAdditions;
@end

@implementation PFVideoAdjustments(PUReviewAdditions)

+ (id)videoAdjustmentsFromAssetAdjustmentsIfRecognized:()PUReviewAdditions
{
  v3 = a3;
  if (v3 && (v4 = objc_opt_class(), [v3 adjustmentFormatIdentifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "adjustmentFormatVersion"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "isRecognizedSlowMotionFormatWithIdentifier:version:", v5, v6), v6, v5, v4))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v3;
    }

    else
    {
      propertyListDictionary = [v3 propertyListDictionary];
      v7 = [objc_alloc(MEMORY[0x1E69C0910]) initWithPropertyListDictionary:propertyListDictionary];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end