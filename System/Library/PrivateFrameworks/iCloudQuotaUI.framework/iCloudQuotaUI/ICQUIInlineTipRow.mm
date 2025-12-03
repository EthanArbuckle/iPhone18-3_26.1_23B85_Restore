@interface ICQUIInlineTipRow
- (ICQUIInlineTipRow)init;
- (id)tableCell;
@end

@implementation ICQUIInlineTipRow

- (ICQUIInlineTipRow)init
{
  v3.receiver = self;
  v3.super_class = ICQUIInlineTipRow;
  result = [(RUIElement *)&v3 init];
  if (result)
  {
    result->_tableCellLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)tableCell
{
  os_unfair_lock_lock(&self->_tableCellLock);
  tableCell = self->_tableCell;
  if (tableCell)
  {
    v4 = tableCell;
    os_unfair_lock_unlock(&self->_tableCellLock);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ICQUIInlineTipRow;
    tableCell = [(RUITableViewRow *)&v12 tableCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x277D3FAD8];
      v7 = tableCell;
      v8 = [v6 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v8 setIdentifier:@"TIP_HOST_CELL_MS"];
      [v8 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
      [v8 setProperty:v7 forKey:*MEMORY[0x277D40148]];
      [v8 setObject:self->_tipView forKeyedSubscript:@"ICQUITipView"];
      [(UITableViewCell *)v7 setSpecifier:v8];
      [(UITableViewCell *)v7 refreshCellContentsWithSpecifier:v8];
    }

    v9 = self->_tableCell;
    self->_tableCell = tableCell;
    v10 = tableCell;

    os_unfair_lock_unlock(&self->_tableCellLock);
    v4 = self->_tableCell;
  }

  return v4;
}

@end