@interface PKTransitCommutePlanPackage
- (PKTransitCommutePlanPackage)initWithCoder:(id)a3;
- (PKTransitCommutePlanPackage)initWithDictionary:(id)a3 backFieldBuckets:(id)a4 bundle:(id)a5 privateBundle:(id)a6 passType:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitCommutePlanPackage

- (PKTransitCommutePlanPackage)initWithDictionary:(id)a3 backFieldBuckets:(id)a4 bundle:(id)a5 privateBundle:(id)a6 passType:(unint64_t)a7
{
  v64 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v61.receiver = self;
  v61.super_class = PKTransitCommutePlanPackage;
  v16 = [(PKTransitCommutePlanPackage *)&v61 init];
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = [v12 objectForKey:@"paymentCard"];
  v18 = [v40 objectForKey:@"commutePlans"];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  commutePlanLookupDictionary = v16->_commutePlanLookupDictionary;
  v16->_commutePlanLookupDictionary = v19;

  [(PKTransitCommutePlanPackage *)v16 setTransitCommutePlanType:0];
  if (v18)
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __97__PKTransitCommutePlanPackage_initWithDictionary_backFieldBuckets_bundle_privateBundle_passType___block_invoke;
    v55[3] = &unk_1E79E1090;
    v56 = v14;
    v57 = v15;
    v60 = a7;
    v21 = v16;
    v58 = v21;
    v59 = v17;
    [v18 enumerateObjectsUsingBlock:v55];
    [(PKTransitCommutePlanPackage *)v21 setTransitCommutePlanType:2];

    v22 = v56;
    goto LABEL_30;
  }

  v37 = v15;
  v42 = v17;
  p_isa = &v16->super.isa;
  v39 = v12;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = v13;
  obj = v13;
  v45 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  v22 = 0;
  if (!v45)
  {
    goto LABEL_29;
  }

  v44 = *v52;
  do
  {
    v24 = 0;
    do
    {
      if (*v52 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v46 = v24;
      v25 = *(*(&v51 + 1) + 8 * v24);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v48;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v48 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v47 + 1) + 8 * i);
            v32 = [v31 key];
            if ([v32 hasPrefix:@"commuter"])
            {
              if (!v22)
              {
                v22 = objc_alloc_init(PKTransitCommutePlan);
                [(PKTransitCommutePlan *)v22 setIdentifier:@"commute_plan"];
              }

              if ([v32 isEqual:@"commuter_route"])
              {
                v33 = [v31 copy];
                [v33 setKey:@"genericTimedPlan"];
                [(PKTransitCommutePlan *)v22 setTitle:v33];
LABEL_21:

                goto LABEL_23;
              }

              if ([v32 isEqual:@"commuter_route_expiration"])
              {
                v33 = [v31 copy];
                [v33 setKey:@"expiryDate"];
                [v23 addObject:v33];
                goto LABEL_21;
              }

              [v23 addObject:v31];
            }

LABEL_23:
          }

          v28 = [v26 countByEnumeratingWithState:&v47 objects:v62 count:16];
        }

        while (v28);
      }

      if (v22)
      {
        v34 = [v23 copy];
        [(PKTransitCommutePlan *)v22 setDetails:v34];

        [p_isa[3] setObject:v22 forKey:@"commute_plan"];
        [v42 addObject:v22];
        [p_isa setTransitCommutePlanType:1];
      }

      v24 = v46 + 1;
    }

    while (v46 + 1 != v45);
    v45 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  }

  while (v45);
LABEL_29:

  v13 = v38;
  v12 = v39;
  v15 = v37;
  v17 = v42;
  v16 = p_isa;
  v18 = 0;
LABEL_30:

  v35 = [v17 copy];
  [(PKTransitCommutePlanPackage *)v16 setTransitCommutePlans:v35];

LABEL_31:
  return v16;
}

void __97__PKTransitCommutePlanPackage_initWithDictionary_backFieldBuckets_bundle_privateBundle_passType___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 PKStringForKey:@"identifier"];
  if (v4)
  {
    v5 = objc_alloc_init(PKTransitCommutePlan);
    v6 = [v4 copy];
    [(PKTransitCommutePlan *)v5 setIdentifier:v6];

    v7 = [v3 PKArrayForKey:@"deviceAccountIdentifiers"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 copy];
      [(PKTransitCommutePlan *)v5 setDeviceAccountIdentifiers:v9];
    }

    -[PKTransitCommutePlan setRequiresAppletSourceOfTruth:](v5, "setRequiresAppletSourceOfTruth:", [v3 PKBoolForKey:@"requiresAppletSourceOfTruth"]);
    -[PKTransitCommutePlan setIsDeviceBound:](v5, "setIsDeviceBound:", [v3 PKBoolForKey:@"isDeviceBound"]);
    v10 = [(PKTransitCommutePlan *)v5 properties];
    v11 = [v3 PKBoolForKey:@"autoloaded"];
    v12 = 2;
    if (!v11)
    {
      v12 = 0;
    }

    [(PKTransitCommutePlan *)v5 setProperties:v12 | v10 & 0xFFFFFFFFFFFFFFFDLL];
    v13 = [v3 PKDictionaryForKey:@"title"];
    v14 = v13;
    if (v13)
    {
      v28 = v13;
      v29 = v8;
      v15 = v4;
      v16 = _FieldForTypeWithDictionaryAndBundle(1, v13, *(a1 + 32), *(a1 + 40), 0, 1, *(a1 + 64));
      v30 = v5;
      [(PKTransitCommutePlan *)v5 setTitle:v16];

      v31 = v3;
      v17 = [v3 PKArrayForKey:@"details"];
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            v25 = _FieldForTypeWithDictionaryAndBundle(4, v24, *(a1 + 32), *(a1 + 40), 0, 1, *(a1 + 64));
            if (v25)
            {
              [v18 addObject:v25];
            }

            else
            {
              v26 = PKLogFacilityTypeGetObject(0xDuLL);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v37 = v15;
                v38 = 2112;
                v39 = v24;
                _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Can't parse a details field on commutePlan %@ %@", buf, 0x16u);
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v21);
      }

      v27 = [v18 copy];
      v5 = v30;
      [(PKTransitCommutePlan *)v30 setDetails:v27];

      v4 = v15;
      [*(*(a1 + 48) + 24) setObject:v30 forKey:v15];
      [*(a1 + 56) addObject:v30];

      v3 = v31;
      v14 = v28;
      v8 = v29;
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject(0xDuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v4;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "No title field for commutePlan with identifier %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, &v5->super, OS_LOG_TYPE_DEFAULT, "No identifier for a commutePlan in pass, skipping", buf, 2u);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  transitCommutePlans = self->_transitCommutePlans;
  v5 = a3;
  [v5 encodeObject:transitCommutePlans forKey:@"PKTransitCommutePlanPackagePlansKey"];
  [v5 encodeObject:self->_commutePlanLookupDictionary forKey:@"PKTransitCommutePlanPackageLookupKey"];
  [v5 encodeInteger:self->_transitCommutePlanType forKey:@"PKTransitCommutePlanPackageTypeKey"];
}

- (PKTransitCommutePlanPackage)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"PKTransitCommutePlanPackagePlansKey"];
  [(PKTransitCommutePlanPackage *)self setTransitCommutePlans:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"PKTransitCommutePlanPackageLookupKey"];
  [(PKTransitCommutePlanPackage *)self setCommutePlanLookupDictionary:v13];

  v14 = [v5 decodeIntegerForKey:@"PKTransitCommutePlanPackageTypeKey"];
  [(PKTransitCommutePlanPackage *)self setTransitCommutePlanType:v14];

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setTransitCommutePlans:self->_transitCommutePlans];
  [v4 setCommutePlanLookupDictionary:self->_commutePlanLookupDictionary];
  [v4 setTransitCommutePlanType:self->_transitCommutePlanType];
  return v4;
}

@end