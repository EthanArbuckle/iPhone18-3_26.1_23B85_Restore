@interface TPSSubscriptionLabel
+ (id)labelsFromUnlocalizedLabels:(id)labels localizedLongLabels:(id)longLabels localizedBadgeLabels:(id)badgeLabels;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSubscriptionLabel:(id)label;
- (TPSSubscriptionLabel)initWithUnlocalizedLabel:(id)label localizedLongLabel:(id)longLabel localizedBadgeLabel:(id)badgeLabel;
- (id)description;
- (unint64_t)hash;
@end

@implementation TPSSubscriptionLabel

+ (id)labelsFromUnlocalizedLabels:(id)labels localizedLongLabels:(id)longLabels localizedBadgeLabels:(id)badgeLabels
{
  labelsCopy = labels;
  longLabelsCopy = longLabels;
  badgeLabelsCopy = badgeLabels;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(labelsCopy, "count")}];
  v11 = [labelsCopy count];
  if (v11 == [longLabelsCopy count])
  {
    v12 = [badgeLabelsCopy count];
    if (v12 == [longLabelsCopy count])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __93__TPSSubscriptionLabel_labelsFromUnlocalizedLabels_localizedLongLabels_localizedBadgeLabels___block_invoke;
      v15[3] = &unk_2782E3C38;
      v16 = longLabelsCopy;
      v17 = badgeLabelsCopy;
      v18 = v10;
      [labelsCopy enumerateObjectsUsingBlock:v15];
    }
  }

  v13 = [v10 copy];

  return v13;
}

void __93__TPSSubscriptionLabel_labelsFromUnlocalizedLabels_localizedLongLabels_localizedBadgeLabels___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [TPSSubscriptionLabel alloc];
  v7 = [a1[4] objectAtIndex:a3];
  v8 = [a1[5] objectAtIndex:a3];
  v9 = [(TPSSubscriptionLabel *)v6 initWithUnlocalizedLabel:v5 localizedLongLabel:v7 localizedBadgeLabel:v8];

  [a1[6] addObject:v9];
}

- (TPSSubscriptionLabel)initWithUnlocalizedLabel:(id)label localizedLongLabel:(id)longLabel localizedBadgeLabel:(id)badgeLabel
{
  labelCopy = label;
  longLabelCopy = longLabel;
  badgeLabelCopy = badgeLabel;
  v15.receiver = self;
  v15.super_class = TPSSubscriptionLabel;
  v12 = [(TPSSubscriptionLabel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_unlocalizedLongLabel, label);
    objc_storeStrong(&v13->_localizedLongLabel, longLabel);
    objc_storeStrong(&v13->_localizedBadgeLabel, badgeLabel);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedLongLabel = [(TPSSubscriptionLabel *)self localizedLongLabel];
  localizedBadgeLabel = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", localizedLongLabel, localizedBadgeLabel];

  return v6;
}

- (unint64_t)hash
{
  unlocalizedLongLabel = [(TPSSubscriptionLabel *)self unlocalizedLongLabel];
  v4 = [unlocalizedLongLabel hash];
  localizedLongLabel = [(TPSSubscriptionLabel *)self localizedLongLabel];
  v6 = [localizedLongLabel hash] ^ v4;
  localizedBadgeLabel = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  v8 = [localizedBadgeLabel hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSubscriptionLabel *)self isEqualToSubscriptionLabel:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSubscriptionLabel:(id)label
{
  labelCopy = label;
  localizedBadgeLabel = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  localizedBadgeLabel2 = [labelCopy localizedBadgeLabel];
  if ([localizedBadgeLabel isEqual:localizedBadgeLabel2])
  {
    localizedLongLabel = [(TPSSubscriptionLabel *)self localizedLongLabel];
    localizedLongLabel2 = [labelCopy localizedLongLabel];
    if ([localizedLongLabel isEqual:localizedLongLabel2])
    {
      unlocalizedLongLabel = [(TPSSubscriptionLabel *)self unlocalizedLongLabel];
      unlocalizedLongLabel2 = [labelCopy unlocalizedLongLabel];
      v11 = [unlocalizedLongLabel isEqual:unlocalizedLongLabel2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end