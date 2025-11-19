@interface ICQCloudStorageGraphTableViewRow
- (ICQCloudStorageGraphTableViewRow)init;
- (ICQCloudStorageGraphTableViewRow)initWithAccount:(id)a3;
- (float)rowHeightWithMax:(float)a3 peggedHeight:(float)a4 tableView:(id)a5 indexPath:(id)a6;
- (id)tableCell;
@end

@implementation ICQCloudStorageGraphTableViewRow

- (ICQCloudStorageGraphTableViewRow)init
{
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];

  v5 = [(ICQCloudStorageGraphTableViewRow *)self initWithAccount:v4];
  return v5;
}

- (ICQCloudStorageGraphTableViewRow)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICQCloudStorageGraphTableViewRow;
  v6 = [(RUIElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    tableCellLock = v7->_tableCellLock;
    v7->_tableCellLock = v8;
  }

  return v7;
}

- (id)tableCell
{
  [(NSLock *)self->_tableCellLock lock];
  tableCell = self->_tableCell;
  if (tableCell)
  {
    v4 = tableCell;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = ICQCloudStorageGraphTableViewRow;
    v4 = [(RUITableViewRow *)&v25 tableCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v6 setIdentifier:@"CLOUD_STORAGE_GRAPH"];
      [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      v7 = MEMORY[0x277CBEC38];
      [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CEC9E8]];
      [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF38]];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"CASTLE" value:&stru_28844FC60 table:@"CloudGroup"];
      [v6 setProperty:v9 forKey:*MEMORY[0x277D40170]];

      [v6 setProperty:v5 forKey:*MEMORY[0x277D40148]];
      [(UITableViewCell *)v5 setSpecifier:v6];
      [(UITableViewCell *)v5 refreshCellContentsWithSpecifier:v6];
      v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v10 startAnimating];
      [(UITableViewCell *)v5 setAccessoryView:v10];
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__11;
      v23 = __Block_byref_object_dispose__11;
      v24 = [objc_alloc(MEMORY[0x277D7F338]) initWithAccount:self->_account];
      v11 = v20[5];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke;
      v15[3] = &unk_27A65C5E0;
      v12 = v5;
      v16 = v12;
      v13 = v6;
      v17 = v13;
      v18 = &v19;
      [v11 fetchStorageSummaryWithCompletion:v15];

      _Block_object_dispose(&v19, 8);
    }

    objc_storeStrong(&self->_tableCell, v4);
  }

  [(NSLock *)self->_tableCellLock unlock];

  return v4;
}

void __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke_2;
  block[3] = &unk_27A65C5B8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v5;
  v7 = *(a1 + 48);
  v14 = v6;
  v15 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAccessoryView:0];
  [*(a1 + 40) setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CEC9E8]];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [v2 displayLabel];
    [*(a1 + 40) setObject:v3 forKeyedSubscript:*MEMORY[0x277D40170]];

    v4 = [*(a1 + 48) totalStorage];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:*MEMORY[0x277CEC9D0]];

    v5 = [*(a1 + 48) freeStorage];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:*MEMORY[0x277CEC9C8]];

    v6 = [*(a1 + 48) usedStorage];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*MEMORY[0x277CEC9E0]];

    v7 = [*(a1 + 48) icqui_AAUIiCloudMediaUsageInfo];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:*MEMORY[0x277CEC9D8]];
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke_2_cold_1(a1, v7);
    }
  }

  [*(a1 + 32) setSpecifier:*(a1 + 40)];
  [*(a1 + 32) refreshCellContentsWithSpecifier:*(a1 + 40)];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (float)rowHeightWithMax:(float)a3 peggedHeight:(float)a4 tableView:(id)a5 indexPath:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(ICQCloudStorageGraphTableViewRow *)self tableCell];
  [v9 _contentWidthForCell:v10 forRowAtIndexPath:v8];
  v12 = v11;

  v13 = [(ICQCloudStorageGraphTableViewRow *)self tableCell];
  LODWORD(v14) = 1112014848;
  LODWORD(v15) = 1112014848;
  [v13 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
  *&v12 = v16;

  return *&v12;
}

void __45__ICQCloudStorageGraphTableViewRow_tableCell__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "No summary response received, Can't show storage graph. Error: %@", &v3, 0xCu);
}

@end