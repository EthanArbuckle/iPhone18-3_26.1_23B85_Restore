@interface SpotlightReceiverResponse
- (BOOL)setUpdate:(id)a3 forItem:(id)a4;
- (SpotlightReceiverResponse)initWithDonation:(id)a3;
- (void)enumerateUpdatesUsingBlock:(id)a3;
@end

@implementation SpotlightReceiverResponse

- (SpotlightReceiverResponse)initWithDonation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SpotlightReceiverResponse;
  v6 = [(SpotlightReceiverResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_donation, a3);
    v7->_status = 0;
  }

  return v7;
}

- (BOOL)setUpdate:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SpotlightReceiverResponse(Internal) *)self donation];
  v9 = [v8 items];
  if (![v9 count])
  {

    goto LABEL_7;
  }

  v10 = [(SpotlightReceiverResponse(Internal) *)self donation];
  v11 = [v10 items];
  v12 = [v11 containsObject:v7];

  if (!v12)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  updates = self->_updates;
  if (!updates)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = self->_updates;
    self->_updates = v14;

    updates = self->_updates;
  }

  [(NSMutableDictionary *)updates setObject:v6 forKey:v7];
  v16 = 1;
LABEL_8:

  return v16;
}

- (void)enumerateUpdatesUsingBlock:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = a3;
  context = objc_autoreleasePoolPush();
  v46 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_updates;
  v40 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v40)
  {
    v39 = *v43;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * i);
        v6 = [(NSMutableDictionary *)self->_updates objectForKeyedSubscript:v5, context];
        v7 = [v6 attributes];
        if ([v7 count])
        {
          v8 = [v6 attributes];
          v9 = [v8 mutableCopy];
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v10 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v9];
        v11 = [v6 status];
        v12 = [(SpotlightReceiverResponse(Internal) *)self donation];
        v13 = v12;
        if (v11 == 2)
        {
          v14 = [v12 versionName];
          if (v14)
          {
            v15 = v14;
            v16 = [(SpotlightReceiverResponse(Internal) *)self donation];
            v17 = [v16 versionValue];

            if (!v17)
            {
              goto LABEL_22;
            }

            v13 = [(SpotlightReceiverResponse(Internal) *)self donation];
            v18 = [v13 versionValue];
            v19 = [(SpotlightReceiverResponse(Internal) *)self donation];
            v20 = [v19 versionName];
            [v9 setObject:v18 forKey:v20];

LABEL_20:
          }

          goto LABEL_22;
        }

        v21 = [v12 errorCodeAttributeName];

        if (v21)
        {
          v22 = [v6 info];
          if (v22)
          {
            v23 = v22;
            v24 = [v6 info];
            v25 = [v24 code];

            if (v25 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
              v27 = [(SpotlightReceiverResponse(Internal) *)self donation];
              v28 = [v27 errorCodeAttributeName];
              [v9 setObject:v26 forKey:v28];
            }
          }
        }

        if ([v6 status] == 4)
        {
          v29 = [(SpotlightReceiverResponse(Internal) *)self donation];
          v30 = [v29 errorAttributeName];

          if (v30)
          {
            v13 = [(SpotlightReceiverResponse(Internal) *)self donation];
            v18 = [v13 errorAttributeName];
            [v10 incrementAttributeValue:&unk_284823078 forKey:v18];
            goto LABEL_20;
          }
        }

LABEL_22:
        v31 = objc_alloc(MEMORY[0x277CC34B0]);
        v32 = [v5 uniqueIdentifier];
        v33 = [v31 initWithUniqueIdentifier:v32 domainIdentifier:0 attributeSet:v10];

        v34 = [(SpotlightReceiverResponse(Internal) *)self donation];
        v35 = [v34 bundleIdentifier];
        [v33 setBundleID:v35];

        [v33 setIsUpdate:1];
        v41[2](v41, v33, &v46);
        LOBYTE(v34) = v46;

        if (v34)
        {
          goto LABEL_25;
        }
      }

      v40 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v40);
  }

LABEL_25:

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x277D85DE8];
}

@end