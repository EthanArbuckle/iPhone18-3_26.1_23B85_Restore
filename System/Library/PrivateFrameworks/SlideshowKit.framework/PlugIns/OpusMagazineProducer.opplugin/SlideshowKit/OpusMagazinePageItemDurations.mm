@interface OpusMagazinePageItemDurations
- (OpusMagazinePageItemDurations)init;
- (void)dealloc;
@end

@implementation OpusMagazinePageItemDurations

- (OpusMagazinePageItemDurations)init
{
  v3.receiver = self;
  v3.super_class = OpusMagazinePageItemDurations;
  result = [(OpusMagazinePageItemDurations *)&v3 init];
  if (result)
  {
    result->_pageDuration = -1.0;
  }

  return result;
}

- (void)dealloc
{
  itemDurations = self->_itemDurations;
  if (itemDurations)
  {

    self->_itemDurations = 0;
  }

  v4.receiver = self;
  v4.super_class = OpusMagazinePageItemDurations;
  [(OpusMagazinePageItemDurations *)&v4 dealloc];
}

@end