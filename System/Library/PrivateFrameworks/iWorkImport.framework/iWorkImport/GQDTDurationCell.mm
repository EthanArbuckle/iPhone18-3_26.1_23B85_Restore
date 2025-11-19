@interface GQDTDurationCell
- (__CFString)createStringValue;
- (int)readAttributesForDurationCell:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDTDurationCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTDurationCell;
  [(GQDTCell *)&v3 dealloc];
}

- (__CFString)createStringValue
{
  mComputedFormat = self->mComputedFormat;
  if (!mComputedFormat || ![(GQDTComputedFormatSpec *)mComputedFormat isDurationFormat])
  {
    v4 = [(GQDSStyle *)self->super.mStyle valueForObjectProperty:124];
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = [(GQDTComputedFormatSpec *)self->mComputedFormat format];
  if (v4)
  {
LABEL_6:
    v4 = [(__CFString *)v4 formatString];
  }

LABEL_7:
  if (!v4)
  {
    v4 = @"hhh mmm sss";
  }

  mValue = self->mValue;
  mProcessorBundle = self->mProcessorBundle;

  return sub_4DCD0(v4, mProcessorBundle, mValue);
}

- (int)readAttributesForDurationCell:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "du");
  self->mValue = v4;
  return 1;
}

@end