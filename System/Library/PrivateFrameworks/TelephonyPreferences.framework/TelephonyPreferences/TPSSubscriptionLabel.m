@interface TPSSubscriptionLabel
+ (id)labelsFromUnlocalizedLabels:(id)a3 localizedLongLabels:(id)a4 localizedBadgeLabels:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSubscriptionLabel:(id)a3;
- (TPSSubscriptionLabel)initWithUnlocalizedLabel:(id)a3 localizedLongLabel:(id)a4 localizedBadgeLabel:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation TPSSubscriptionLabel

+ (id)labelsFromUnlocalizedLabels:(id)a3 localizedLongLabels:(id)a4 localizedBadgeLabels:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v11 = [v7 count];
  if (v11 == [v8 count])
  {
    v12 = [v9 count];
    if (v12 == [v8 count])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __93__TPSSubscriptionLabel_labelsFromUnlocalizedLabels_localizedLongLabels_localizedBadgeLabels___block_invoke;
      v15[3] = &unk_2782E3C38;
      v16 = v8;
      v17 = v9;
      v18 = v10;
      [v7 enumerateObjectsUsingBlock:v15];
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

- (TPSSubscriptionLabel)initWithUnlocalizedLabel:(id)a3 localizedLongLabel:(id)a4 localizedBadgeLabel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSSubscriptionLabel;
  v12 = [(TPSSubscriptionLabel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_unlocalizedLongLabel, a3);
    objc_storeStrong(&v13->_localizedLongLabel, a4);
    objc_storeStrong(&v13->_localizedBadgeLabel, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TPSSubscriptionLabel *)self localizedLongLabel];
  v5 = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TPSSubscriptionLabel *)self unlocalizedLongLabel];
  v4 = [v3 hash];
  v5 = [(TPSSubscriptionLabel *)self localizedLongLabel];
  v6 = [v5 hash] ^ v4;
  v7 = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSubscriptionLabel *)self isEqualToSubscriptionLabel:v4];
  }

  return v5;
}

- (BOOL)isEqualToSubscriptionLabel:(id)a3
{
  v4 = a3;
  v5 = [(TPSSubscriptionLabel *)self localizedBadgeLabel];
  v6 = [v4 localizedBadgeLabel];
  if ([v5 isEqual:v6])
  {
    v7 = [(TPSSubscriptionLabel *)self localizedLongLabel];
    v8 = [v4 localizedLongLabel];
    if ([v7 isEqual:v8])
    {
      v9 = [(TPSSubscriptionLabel *)self unlocalizedLongLabel];
      v10 = [v4 unlocalizedLongLabel];
      v11 = [v9 isEqual:v10];
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