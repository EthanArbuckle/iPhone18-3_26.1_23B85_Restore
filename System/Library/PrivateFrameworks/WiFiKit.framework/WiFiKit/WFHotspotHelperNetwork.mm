@interface WFHotspotHelperNetwork
- (WFHotspotHelperNetwork)initWithSSID:(id)a3 bundleIdentifier:(id)a4 password:(id)a5 label:(id)a6;
- (id)description;
@end

@implementation WFHotspotHelperNetwork

- (WFHotspotHelperNetwork)initWithSSID:(id)a3 bundleIdentifier:(id)a4 password:(id)a5 label:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = WFHotspotHelperNetwork;
  v15 = [(WFHotspotHelperNetwork *)&v25 init];
  v16 = v15;
  if (!v15)
  {
    p_super = 0;
LABEL_14:

    goto LABEL_15;
  }

  objc_storeStrong(&v15->_ssid, a3);
  if (!v16->_ssid)
  {
    [WFHotspotHelperNetwork initWithSSID:bundleIdentifier:password:label:];
    p_super = &v16->super;
    v16 = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&v16->_password, a5);
  if (!v16->_password)
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v17 && os_log_type_enabled(v17, v18))
    {
      ssid = v16->_ssid;
      *buf = 138412290;
      v27 = ssid;
      _os_log_impl(&dword_273ECD000, v17, v18, "Nil password for hotspot helper network ssid: %@", buf, 0xCu);
    }
  }

  objc_storeStrong(&v16->_label, a6);
  objc_storeStrong(&v16->_bundleIdentifier, a4);
  if (!v16->_bundleIdentifier)
  {
    p_super = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && p_super && os_log_type_enabled(p_super, v21))
    {
      v22 = v16->_ssid;
      *buf = 136315394;
      v27 = "[WFHotspotHelperNetwork initWithSSID:bundleIdentifier:password:label:]";
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_273ECD000, p_super, v21, "%s: missing bundleIdentifier for %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFHotspotHelperNetwork *)self ssid];
  v7 = [(WFHotspotHelperNetwork *)self password];
  v8 = [(WFHotspotHelperNetwork *)self label];
  v9 = [(WFHotspotHelperNetwork *)self bundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: SSID: %@, Password: %@, Label: %@, Identifier: %@>", v5, v6, v7, v8, v9];

  return v10;
}

- (void)initWithSSID:bundleIdentifier:password:label:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273ECD000, v0, v1, "Missing SSID for hotspot helper network", v2, 2u);
  }
}

@end