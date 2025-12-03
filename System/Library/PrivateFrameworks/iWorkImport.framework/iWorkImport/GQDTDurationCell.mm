@interface GQDTDurationCell
- (__CFString)createStringValue;
- (int)readAttributesForDurationCell:(_xmlTextReader *)cell;
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
    format = [(GQDSStyle *)self->super.mStyle valueForObjectProperty:124];
    if (!format)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  format = [(GQDTComputedFormatSpec *)self->mComputedFormat format];
  if (format)
  {
LABEL_6:
    format = [(__CFString *)format formatString];
  }

LABEL_7:
  if (!format)
  {
    format = @"hhh mmm sss";
  }

  mValue = self->mValue;
  mProcessorBundle = self->mProcessorBundle;

  return sub_4DCD0(format, mProcessorBundle, mValue);
}

- (int)readAttributesForDurationCell:(_xmlTextReader *)cell
{
  sub_4290C(cell, qword_A35E8, "du");
  self->mValue = v4;
  return 1;
}

@end