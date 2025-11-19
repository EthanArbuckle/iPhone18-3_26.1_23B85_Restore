@interface USBudget
- (USBudget)initWithCategories:(id)a3 applications:(id)a4 exemptApplications:(id)a5 webDomains:(id)a6 schedule:(id)a7 calendarIdentifier:(id)a8 identifier:(id)a9;
- (USBudget)initWithCategories:(id)a3 applications:(id)a4 webDomains:(id)a5 schedule:(id)a6 calendarIdentifier:(id)a7 identifier:(id)a8;
- (USBudget)initWithCoder:(id)a3;
- (USBudget)initWithType:(int64_t)a3 items:(id)a4 schedule:(id)a5 calendarIdentifier:(id)a6 identifier:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USBudget

- (USBudget)initWithCategories:(id)a3 applications:(id)a4 webDomains:(id)a5 schedule:(id)a6 calendarIdentifier:(id)a7 identifier:(id)a8
{
  v14 = MEMORY[0x277CBEB98];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v14 set];
  v22 = [(USBudget *)self initWithCategories:v20 applications:v19 exemptApplications:v21 webDomains:v18 schedule:v17 calendarIdentifier:v16 identifier:v15];

  return v22;
}

- (USBudget)initWithCategories:(id)a3 applications:(id)a4 exemptApplications:(id)a5 webDomains:(id)a6 schedule:(id)a7 calendarIdentifier:(id)a8 identifier:(id)a9
{
  v16 = a3;
  v46 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a6;
  v21 = a5;
  v22 = objc_opt_new();
  v23 = [v22 normalizeDomainNames:v20];

  if (![v16 count] && !objc_msgSend(v46, "count") && !objc_msgSend(v23, "count"))
  {
    [USBudget initWithCategories:a2 applications:self exemptApplications:? webDomains:? schedule:? calendarIdentifier:? identifier:?];
  }

  if (![v17 count])
  {
    [USBudget initWithCategories:a2 applications:self exemptApplications:? webDomains:? schedule:? calendarIdentifier:? identifier:?];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __113__USBudget_initWithCategories_applications_exemptApplications_webDomains_schedule_calendarIdentifier_identifier___block_invoke;
  v48[3] = &unk_279E09990;
  v50 = a2;
  v24 = self;
  v49 = v24;
  [v17 enumerateKeysAndObjectsUsingBlock:v48];
  v47.receiver = v24;
  v47.super_class = USBudget;
  v25 = [(USBudget *)&v47 init];
  if (v19)
  {
    v26 = [v19 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;
  }

  else
  {
    identifier = objc_opt_new();
    v28 = [identifier UUIDString];
    v29 = v25->_identifier;
    v25->_identifier = v28;
  }

  v30 = [v16 copy];
  categoryIdentifiers = v25->_categoryIdentifiers;
  v25->_categoryIdentifiers = v30;

  v32 = [v46 copy];
  bundleIdentifiers = v25->_bundleIdentifiers;
  v25->_bundleIdentifiers = v32;

  v34 = [v21 copy];
  exemptBundleIdentifiers = v25->_exemptBundleIdentifiers;
  v25->_exemptBundleIdentifiers = v34;

  v36 = [v23 copy];
  webDomains = v25->_webDomains;
  v25->_webDomains = v36;

  if (v18)
  {
    v38 = [v18 copy];
    calendarIdentifier = v25->_calendarIdentifier;
    v25->_calendarIdentifier = v38;
  }

  else
  {
    calendarIdentifier = [MEMORY[0x277CBEA80] currentCalendar];
    v40 = [calendarIdentifier calendarIdentifier];
    v41 = [v40 copy];
    v42 = v25->_calendarIdentifier;
    v25->_calendarIdentifier = v41;
  }

  v43 = [v17 copy];
  schedule = v25->_schedule;
  v25->_schedule = v43;

  return v25;
}

void __113__USBudget_initWithCategories_applications_exemptApplications_webDomains_schedule_calendarIdentifier_identifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  if (v4 < 0.0)
  {
    __113__USBudget_initWithCategories_applications_exemptApplications_webDomains_schedule_calendarIdentifier_identifier___block_invoke_cold_1(a1);
  }
}

- (USBudget)initWithType:(int64_t)a3 items:(id)a4 schedule:(id)a5 calendarIdentifier:(id)a6 identifier:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v18 = [MEMORY[0x277CBEB98] set];
      v25 = v16;
      v19 = self;
      v20 = v17;
      v21 = v17;
      v22 = v18;
      v23 = v13;
      goto LABEL_11;
    }

    if (a3 == 4)
    {
      v18 = [MEMORY[0x277CBEB98] set];
      v25 = v16;
      v19 = self;
      v20 = v13;
      v21 = v17;
      goto LABEL_8;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"USUsageMonitor.m" lineNumber:61 description:@"Screen Time budgets are unsupported"];
LABEL_12:

      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v18 = [MEMORY[0x277CBEB98] set];
      v25 = v16;
      v19 = self;
      v20 = v17;
      v21 = v13;
LABEL_8:
      v22 = v18;
      v23 = v17;
LABEL_11:
      self = [(USBudget *)v19 initWithCategories:v20 applications:v21 exemptApplications:v22 webDomains:v23 schedule:v14 calendarIdentifier:v15 identifier:v25];
      goto LABEL_12;
    }
  }

LABEL_13:

  return self;
}

- (USBudget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CategoryIdentifiers"];
  v34 = [v4 decodeObjectOfClasses:v8 forKey:@"BundleIdentifiers"];
  v32 = [v4 decodeObjectOfClasses:v8 forKey:@"ExemptBundleIdentifiers"];
  v10 = [v4 decodeObjectOfClasses:v8 forKey:@"WebDomains"];
  v11 = objc_opt_new();
  v33 = [v11 normalizeDomainNames:v10];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CalendarIdentifier"];
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Schedule"];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = [v16 count] != 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __26__USBudget_initWithCoder___block_invoke;
  v36[3] = &unk_279E099B8;
  v36[4] = &v37;
  [v16 enumerateKeysAndObjectsUsingBlock:v36];
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v9 count] || objc_msgSend(v34, "count"))
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v17 = 0;
  if ([v33 count] && v12)
  {
LABEL_5:
    if (*(v38 + 24) == 1)
    {
      v35.receiver = self;
      v35.super_class = USBudget;
      v17 = [(USBudget *)&v35 init];
      v18 = [v5 copy];
      v19 = *(v17 + 1);
      *(v17 + 1) = v18;

      v20 = [v9 copy];
      v21 = *(v17 + 2);
      *(v17 + 2) = v20;

      v22 = [v34 copy];
      v23 = *(v17 + 3);
      *(v17 + 3) = v22;

      v24 = [v32 copy];
      v25 = *(v17 + 4);
      *(v17 + 4) = v24;

      v26 = [v33 copy];
      v27 = *(v17 + 5);
      *(v17 + 5) = v26;

      v28 = [v12 copy];
      v29 = *(v17 + 6);
      *(v17 + 6) = v28;

      v30 = [v16 copy];
      self = *(v17 + 7);
      *(v17 + 7) = v30;
      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
  }

LABEL_8:

  _Block_object_dispose(&v37, 8);
  return v17;
}

uint64_t __26__USBudget_initWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 doubleValue];
  if (v7 < 0.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_categoryIdentifiers forKey:@"CategoryIdentifiers"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"BundleIdentifiers"];
  [v5 encodeObject:self->_exemptBundleIdentifiers forKey:@"ExemptBundleIdentifiers"];
  [v5 encodeObject:self->_webDomains forKey:@"WebDomains"];
  [v5 encodeObject:self->_calendarIdentifier forKey:@"CalendarIdentifier"];
  [v5 encodeObject:self->_schedule forKey:@"Schedule"];
}

- (id)description
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v51.receiver = self;
  v51.super_class = USBudget;
  v4 = [(USBudget *)&v51 description];
  v5 = [(USBudget *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  objc_msgSend(v6, "appendString:", @" Categories: (");
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [(USBudget *)self categoryIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (*(v48 + 24) == 1)
        {
          [v6 appendString:*(*(&v43 + 1) + 8 * i)];
          *(v48 + 24) = 0;
        }

        else
        {
          [v6 appendFormat:@", %@", *(*(&v43 + 1) + 8 * i)];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v8);
  }

  [v6 appendString:@""]);
  objc_msgSend(v6, "appendString:", @" Applications: (");
  *(v48 + 24) = 1;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [(USBudget *)self bundleIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v54 count:16];
  if (v12)
  {
    v13 = *v40;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if (*(v48 + 24) == 1)
        {
          [v6 appendString:*(*(&v39 + 1) + 8 * j)];
          *(v48 + 24) = 0;
        }

        else
        {
          [v6 appendFormat:@", %@", *(*(&v39 + 1) + 8 * j)];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v54 count:16];
    }

    while (v12);
  }

  [v6 appendString:@""]);
  if ([(NSSet *)self->_exemptBundleIdentifiers count])
  {
    objc_msgSend(v6, "appendString:", @" Exempt Applications: (");
    *(v48 + 24) = 1;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [(USBudget *)self exemptBundleIdentifiers];
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if (*(v48 + 24) == 1)
          {
            [v6 appendString:*(*(&v35 + 1) + 8 * k)];
            *(v48 + 24) = 0;
          }

          else
          {
            [v6 appendFormat:@", %@", *(*(&v35 + 1) + 8 * k)];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v35 objects:v53 count:16];
      }

      while (v16);
    }

    [v6 appendString:@""]);
  }

  objc_msgSend(v6, "appendString:", @" WebDomains: (");
  *(v48 + 24) = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [(USBudget *)self webDomains];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v52 count:16];
  if (v20)
  {
    v21 = *v32;
    do
    {
      for (m = 0; m != v20; ++m)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v19);
        }

        if (*(v48 + 24) == 1)
        {
          [v6 appendString:*(*(&v31 + 1) + 8 * m)];
          *(v48 + 24) = 0;
        }

        else
        {
          [v6 appendFormat:@", %@", *(*(&v31 + 1) + 8 * m)];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v31 objects:v52 count:16];
    }

    while (v20);
  }

  [v6 appendString:@""]);
  v23 = [(USBudget *)self calendarIdentifier];
  [v6 appendFormat:@" %@:{", v23];

  *(v48 + 24) = 1;
  v24 = [(USBudget *)self schedule];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __23__USBudget_description__block_invoke;
  v28[3] = &unk_279E099E0;
  v30 = &v47;
  v25 = v6;
  v29 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:v28];

  [v25 appendString:@"}"];
  _Block_object_dispose(&v47, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __23__USBudget_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (*(*(*(v5 + 8) + 8) + 24) != 1)
  {
    return [v4 appendFormat:@", %@: %@", a2, a3];
  }

  result = [v4 appendFormat:@"%@: %@", a2, a3];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

- (void)initWithCategories:(uint64_t)a1 applications:(uint64_t)a2 exemptApplications:webDomains:schedule:calendarIdentifier:identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageMonitor.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"(categoryIdentifiers.count > 0) || (bundleIdentifiers.count > 0) || (normalizedWebDomains.count > 0)"}];
}

- (void)initWithCategories:(uint64_t)a1 applications:(uint64_t)a2 exemptApplications:webDomains:schedule:calendarIdentifier:identifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageMonitor.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"schedule.count > 0"}];
}

void __113__USBudget_initWithCategories_applications_exemptApplications_webDomains_schedule_calendarIdentifier_identifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USUsageMonitor.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"timeLimit.doubleValue >= 0.0"}];
}

@end