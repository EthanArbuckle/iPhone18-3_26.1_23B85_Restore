@interface GQDTNumberCell
- (__CFString)createStringValue;
- (int)readAttributesForNCell:(_xmlTextReader *)cell;
- (int)readAttributesForNumberCell:(_xmlTextReader *)cell;
- (void)dealloc;
@end

@implementation GQDTNumberCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTNumberCell;
  [(GQDTCell *)&v3 dealloc];
}

- (__CFString)createStringValue
{
  alloc = 0;
  mComputedFormat = self->mComputedFormat;
  if (mComputedFormat)
  {
    if ([(GQDTComputedFormatSpec *)mComputedFormat isNumberFormat])
    {
      format = [(GQDTComputedFormatSpec *)self->mComputedFormat format];
      alloc = format;
      if (format)
      {
        return [(__CFAllocator *)format createStringFromDouble:self->mValue];
      }
    }
  }

  [(GQDSStyle *)self->super.mStyle hasValueForObjectProperty:122 value:&alloc];
  format = alloc;
  if (alloc)
  {
    return [(__CFAllocator *)format createStringFromDouble:self->mValue];
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%f", *&self->mValue);
  }
}

- (int)readAttributesForNumberCell:(_xmlTextReader *)cell
{
  sub_4290C(cell, qword_A35E8, "value");
  self->mValue = v4;
  return 1;
}

- (int)readAttributesForNCell:(_xmlTextReader *)cell
{
  sub_4290C(cell, qword_A35E8, "v");
  self->mValue = v4;
  return 1;
}

@end