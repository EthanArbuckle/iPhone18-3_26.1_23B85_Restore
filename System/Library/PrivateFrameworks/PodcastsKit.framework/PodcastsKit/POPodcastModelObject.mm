@interface POPodcastModelObject
- (SAMPCollection)SAMPCollection;
- (id)description;
@end

@implementation POPodcastModelObject

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(POPodcastModelObject *)self title];
  indexPath = [(POPodcastModelObject *)self indexPath];
  uuid = [(POPodcastModelObject *)self uuid];
  v9 = [v3 stringWithFormat:@"%@ (%p) title: %@, index path: %@, uuid, %@", v5, self, title, indexPath, uuid];

  return v9;
}

- (SAMPCollection)SAMPCollection
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init([objc_opt_class() SAMPClass]);
  v4 = MEMORY[0x277CCACA8];
  uriScheme = [objc_opt_class() uriScheme];
  uuid = [(POPodcastModelObject *)self uuid];
  v7 = [v4 stringWithFormat:@"%@://device/%@", uriScheme, uuid];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  [v3 setIdentifier:v8];

  title = [(POPodcastModelObject *)self title];
  [v3 setTitle:title];

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v10 = POLogContextCommand;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_25E9F0000, v10, OS_LOG_TYPE_INFO, "Returning SAMPCollection %@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end