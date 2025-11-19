@interface GQDTNumberCell
- (__CFString)createStringValue;
- (int)readAttributesForNCell:(_xmlTextReader *)a3;
- (int)readAttributesForNumberCell:(_xmlTextReader *)a3;
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
      v4 = [(GQDTComputedFormatSpec *)self->mComputedFormat format];
      alloc = v4;
      if (v4)
      {
        return [(__CFAllocator *)v4 createStringFromDouble:self->mValue];
      }
    }
  }

  [(GQDSStyle *)self->super.mStyle hasValueForObjectProperty:122 value:&alloc];
  v4 = alloc;
  if (alloc)
  {
    return [(__CFAllocator *)v4 createStringFromDouble:self->mValue];
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%f", *&self->mValue);
  }
}

- (int)readAttributesForNumberCell:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "value");
  self->mValue = v4;
  return 1;
}

- (int)readAttributesForNCell:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "v");
  self->mValue = v4;
  return 1;
}

@end