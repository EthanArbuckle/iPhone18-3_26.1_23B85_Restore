@interface ICQQuotaAppDetailsResponse
- (ICQQuotaAppDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (id)description;
- (void)addApps:(id)a3;
@end

@implementation ICQQuotaAppDetailsResponse

- (ICQQuotaAppDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ICQQuotaAppDetailsResponse;
  v24 = [(AAResponse *)&v29 initWithHTTPResponse:a3 data:a4];
  if (v24)
  {
    v4 = [(AAResponse *)v24 responseDictionary];
    v5 = [v4 objectForKey:@"results"];

    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    apps = v24->_apps;
    v23 = 64;
    v24->_apps = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKey:{*(*(&v25 + 1) + 8 * v12), v23}];
          v14 = objc_alloc_init(ICQQuotaApp);
          v15 = [v13 objectForKey:@"bundle_id"];
          [(ICQQuotaApp *)v14 setBundleID:v15];

          v16 = [v13 objectForKey:@"application_name"];
          [(ICQQuotaApp *)v14 setName:v16];

          v17 = [v13 objectForKey:@"localized_application_name"];
          [(ICQQuotaApp *)v14 setLocalizedName:v17];

          v18 = [v13 objectForKey:@"icon_url"];
          if (v18)
          {
            v19 = [MEMORY[0x277CBEBC0] URLWithString:v18];
            [(ICQQuotaApp *)v14 setIconURL:v19];
          }

          v20 = [v13 objectForKey:@"thumbnail_url"];
          if (v20)
          {
            v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
            [(ICQQuotaApp *)v14 setThumbnailURL:v21];
          }

          [*(&v24->super.super.isa + v23) addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }
  }

  return v24;
}

- (void)addApps:(id)a3
{
  v4 = a3;
  apps = self->_apps;
  v8 = v4;
  if (!apps)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_apps;
    self->_apps = v6;

    v4 = v8;
    apps = self->_apps;
  }

  [(NSMutableArray *)apps addObjectsFromArray:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ICQQuotaAppDetailsResponse *)self apps];
  v6 = [v3 stringWithFormat:@"<%@: %p with apps: %@>", v4, self, v5];

  return v6;
}

@end