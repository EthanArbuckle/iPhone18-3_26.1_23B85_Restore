@interface SKUIRedeemIdManager
- (SKUIPinnedFooterView)pinnedFooterView;
- (SKUIRedeemIdManager)initWithClientContext:(id)a3;
- (SKUIRedeemIdManagerDelegate)delegate;
- (double)_heightForDisclosureFooter;
- (double)_tableViewNonFooterContentHeight;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_disclosureAttributedString;
- (id)_nextIndexPath:(id)a3;
- (id)_pcLinkString;
- (id)_placeholderTextForIndexPath:(id)a3;
- (id)_regulationsLinkString;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)_autoCapitalizationTypeForIndexPath:(id)a3;
- (int64_t)_keyboardTypeForIndexPath:(id)a3;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_returnKeyTypeForIndexPath:(id)a3;
- (void)dismissActiveCell;
- (void)redeemIdCell:(id)a3 didChangeToText:(id)a4;
- (void)redeemIdCell:(id)a3 didReturnWithText:(id)a4;
- (void)setFooterHidden:(BOOL)a3;
- (void)setTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SKUIRedeemIdManager

- (SKUIRedeemIdManager)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemIdManager initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIRedeemIdManager;
  v6 = [(SKUIRedeemIdManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (SKUIPinnedFooterView)pinnedFooterView
{
  pinnedFooterView = self->_pinnedFooterView;
  if (!pinnedFooterView)
  {
    v4 = [SKUIPinnedFooterView alloc];
    v5 = [(SKUIPinnedFooterView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_pinnedFooterView;
    self->_pinnedFooterView = v5;

    v7 = self->_pinnedFooterView;
    v8 = [(SKUIRedeemIdManager *)self _disclosureAttributedString];
    [(SKUIPinnedFooterView *)v7 setAttributedText:v8];

    v9 = self->_pinnedFooterView;
    v10 = [(SKUIRedeemIdManager *)self tableView];
    [v10 separatorInset];
    [(SKUIPinnedFooterView *)v9 setHorizontalPadding:v11];

    pinnedFooterView = self->_pinnedFooterView;
  }

  return pinnedFooterView;
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  p_tableView = &self->_tableView;
  if (self->_tableView != v5)
  {
    v8 = v5;
    objc_storeStrong(p_tableView, a3);
    v7 = [(SKUIRedeemIdManager *)self tableView];
    [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"redeemIdCell"];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_tableView, v5);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SKUIRedeemIdManager *)self activeIndexPath];
  v8 = v6;
  [(SKUIRedeemIdManager *)self setActiveIndexPath:v8];
  v9 = [v13 cellForRowAtIndexPath:v8];
  v10 = [v9 textField];
  [v10 setAutocapitalizationType:{-[SKUIRedeemIdManager _autoCapitalizationTypeForIndexPath:](self, "_autoCapitalizationTypeForIndexPath:", v8)}];

  [v9 becomeFirstResponder];
  if (v7 && ([v7 isEqual:v8] & 1) == 0)
  {
    v11 = [v13 cellForRowAtIndexPath:v7];
    [v11 resignFirstResponder];
  }

  v12 = [(SKUIRedeemIdManager *)self delegate];
  [v12 redeemIdManager:self movedToRowAtIndexPath:v8];
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    [(SKUIRedeemIdManager *)self _heightForDisclosureFooter];
    v7 = v8;
  }

  else if (a4 == 2)
  {
    v7 = 50.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4 == 3)
  {
    v6 = [(SKUIRedeemIdManager *)self pinnedFooterView:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(SKUIRedeemIdManager *)self clientContext];
    if (v7)
    {
      v8 = @"REDEEM_NATIONAL_ID_SECTION_NATIONAL_ID";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_SECTION_NATIONAL_ID";
    goto LABEL_15;
  }

  if (a4 == 1)
  {
    v7 = [(SKUIRedeemIdManager *)self clientContext];
    if (v7)
    {
      v8 = @"REDEEM_NATIONAL_ID_SECTION_PHONE";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_SECTION_PHONE";
LABEL_15:
    v9 = [SKUIClientContext localizedStringForKey:v11 inBundles:0 inTable:@"Redeem"];
    goto LABEL_16;
  }

  if (a4)
  {
    v10 = &stru_2827FFAC8;
    goto LABEL_17;
  }

  v7 = [(SKUIRedeemIdManager *)self clientContext];
  if (!v7)
  {
    v11 = @"REDEEM_NATIONAL_ID_SECTION_NAME";
    goto LABEL_15;
  }

  v8 = @"REDEEM_NATIONAL_ID_SECTION_NAME";
LABEL_10:
  v9 = [v7 localizedStringForKey:v8 inTable:@"Redeem"];
LABEL_16:
  v10 = v9;

LABEL_17:

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 2)
  {
    v4 = [(SKUIRedeemIdManager *)self clientContext];
    v5 = v4;
    if (v4)
    {
      [v4 localizedStringForKey:@"REDEEM_NATIONAL_ID_DESCRIPTION" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DESCRIPTION" inBundles:0 inTable:@"Redeem"];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"redeemIdCell" forIndexPath:v6];
  v8 = [v7 textField];
  v9 = [v8 text];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [(SKUIRedeemIdManager *)self _placeholderTextForIndexPath:v6];
    [v7 setPlaceholderText:v11];
  }

  [v7 setKeyboardType:{-[SKUIRedeemIdManager _keyboardTypeForIndexPath:](self, "_keyboardTypeForIndexPath:", v6)}];
  [v7 setReturnKeyType:{-[SKUIRedeemIdManager _returnKeyTypeForIndexPath:](self, "_returnKeyTypeForIndexPath:", v6)}];
  [v7 setAutoCapitalizationType:{-[SKUIRedeemIdManager _autoCapitalizationTypeForIndexPath:](self, "_autoCapitalizationTypeForIndexPath:", v6)}];
  [v7 setDelegate:self];

  return v7;
}

- (void)redeemIdCell:(id)a3 didReturnWithText:(id)a4
{
  v14 = a4;
  v5 = [(SKUIRedeemIdManager *)self activeIndexPath];
  v6 = [(SKUIRedeemIdManager *)self _nextIndexPath:v5];
  v7 = [(SKUIRedeemIdManager *)self delegate];
  [v7 redeemIdManager:self didReturnText:v14 forCellAtIndexPath:v5];

  [(SKUIRedeemIdManager *)self setActiveIndexPath:v6];
  if (v6)
  {
    v8 = [(SKUIRedeemIdManager *)self tableView];
    v9 = [v8 cellForRowAtIndexPath:v6];

    [v9 becomeFirstResponder];
  }

  v10 = [(SKUIRedeemIdManager *)self tableView];
  v11 = [v10 cellForRowAtIndexPath:v5];

  [v11 resignFirstResponder];
  if ([v14 length])
  {
    v12 = [(SKUIRedeemIdManager *)self _placeholderTextForIndexPath:v5];
    [v11 setPlaceholderText:v12];
  }

  v13 = [(SKUIRedeemIdManager *)self delegate];
  [v13 redeemIdManager:self movedToRowAtIndexPath:v6];
}

- (void)redeemIdCell:(id)a3 didChangeToText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKUIRedeemIdManager *)self tableView];
  v10 = [v8 indexPathForCell:v7];

  v9 = [(SKUIRedeemIdManager *)self delegate];
  [v9 redeemIdManager:self didChangeToText:v6 forCellAtIndexPath:v10];
}

- (void)setFooterHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SKUIRedeemIdManager *)self pinnedFooterView];
  [v4 setHidden:v3];
}

- (void)dismissActiveCell
{
  v3 = [(SKUIRedeemIdManager *)self activeIndexPath];

  if (v3)
  {
    v4 = [(SKUIRedeemIdManager *)self tableView];
    v5 = [(SKUIRedeemIdManager *)self activeIndexPath];
    v6 = [v4 cellForRowAtIndexPath:v5];

    [v6 resignFirstResponder];
  }
}

- (id)_regulationsLinkString
{
  v2 = [(SKUIRedeemIdManager *)self clientContext];
  v3 = v2;
  if (v2)
  {
    [v2 localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_REGULATIONS" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_REGULATIONS" inBundles:0 inTable:@"Redeem"];
  }
  v4 = ;

  return v4;
}

- (id)_pcLinkString
{
  v2 = [(SKUIRedeemIdManager *)self clientContext];
  v3 = v2;
  if (v2)
  {
    [v2 localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_PC" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_PC" inBundles:0 inTable:@"Redeem"];
  }
  v4 = ;

  return v4;
}

- (id)_placeholderTextForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == 2 || v5 == 1)
  {
    v7 = [(SKUIRedeemIdManager *)self clientContext];
    if (v7)
    {
      v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_REQUIRED";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_REQUIRED";
LABEL_13:
    v9 = [SKUIClientContext localizedStringForKey:v11 inBundles:0 inTable:@"Redeem"];
    goto LABEL_14;
  }

  if (v5)
  {
LABEL_11:
    v10 = &stru_2827FFAC8;
    goto LABEL_15;
  }

  v6 = [v4 row];
  if (v6 == 1)
  {
    v7 = [(SKUIRedeemIdManager *)self clientContext];
    if (v7)
    {
      v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_FIRST_NAME";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_FIRST_NAME";
    goto LABEL_13;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v7 = [(SKUIRedeemIdManager *)self clientContext];
  if (!v7)
  {
    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_LAST_NAME";
    goto LABEL_13;
  }

  v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_LAST_NAME";
LABEL_10:
  v9 = [v7 localizedStringForKey:v8 inTable:@"Redeem"];
LABEL_14:
  v10 = v9;

LABEL_15:

  return v10;
}

- (id)_disclosureAttributedString
{
  v3 = [(SKUIRedeemIdManager *)self clientContext];
  v4 = v3;
  if (v3)
  {
    [v3 localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;

  v6 = [(SKUIRedeemIdManager *)self _pcLinkString];
  v7 = [(SKUIRedeemIdManager *)self _regulationsLinkString];
  v8 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@%@" error:0, v6, v7];
  v9 = [v8 rangeOfString:v6 options:4];
  v23 = v10;
  v24 = v9;
  v11 = [v8 rangeOfString:v7 options:4];
  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v15 = objc_alloc_init(MEMORY[0x277D69C88]);
  v26 = 0;
  v16 = [v15 valueForKey:@"redeemPartnerTerms" error:&v26];
  v17 = v26;
  v18 = v17;
  if (v17 || !v16)
  {
    NSLog(&cfstr_UnableToLoadNa.isa, v17);
  }

  else
  {
    [v14 addAttribute:*MEMORY[0x277D740E8] value:v16 range:{v11, v13}];
  }

  v25 = v18;
  v19 = [v15 valueForKey:@"redeemPartnerInfo" error:&v25];
  v20 = v25;

  if (v20 || !v19)
  {
    NSLog(&cfstr_UnableToLoadNa_0.isa, v20);
  }

  else
  {
    [v14 addAttribute:*MEMORY[0x277D740E8] value:v19 range:{v24, v23}];
  }

  v21 = [v14 copy];

  return v21;
}

- (id)_nextIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIRedeemIdManager *)self tableView];
  v6 = [v5 numberOfRowsInSection:{objc_msgSend(v4, "section")}];

  v7 = [(SKUIRedeemIdManager *)self tableView];
  v8 = [v7 numberOfSections];

  if ([v4 row] < (v6 - 1))
  {
    v9 = MEMORY[0x277CCAA70];
    v10 = [v4 row];
    v11 = [v4 section];
    v12 = v10 + 1;
    v13 = v9;
LABEL_5:
    v17 = [v13 indexPathForRow:v12 inSection:v11];
    goto LABEL_7;
  }

  v14 = [(SKUIRedeemIdManager *)self activeIndexPath];
  v15 = [v14 section] + 1;

  if (v15 < v8 - 1)
  {
    v16 = MEMORY[0x277CCAA70];
    v11 = [v4 section] + 1;
    v13 = v16;
    v12 = 0;
    goto LABEL_5;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (double)_heightForDisclosureFooter
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 statusBarFrame];
  v5 = v4;

  v6 = [(SKUIRedeemIdManager *)self tableView];
  [v6 bounds];
  v8 = v7 - v5;

  [(SKUIRedeemIdManager *)self _tableViewNonFooterContentHeight];
  v10 = v9 + 150.0;
  v11 = v8 - v9;
  if (v10 <= v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 150.0;
  }

  v13 = [(SKUIRedeemIdManager *)self tableView];
  [v13 contentInset];
  v15 = v12 - v14;

  return v15;
}

- (double)_tableViewNonFooterContentHeight
{
  v3 = [(SKUIRedeemIdManager *)self tableView];
  v4 = [v3 numberOfSections];

  if (!v4)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    if (v5 != 3)
    {
      v7 = [(SKUIRedeemIdManager *)self tableView];
      [v7 rectForSection:v5];
      v9 = v8;

      v6 = v6 + v9;
    }

    ++v5;
  }

  while (v4 != v5);
  return v6;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_215F3F8D0[a3];
  }
}

- (int64_t)_keyboardTypeForIndexPath:(id)a3
{
  v3 = [a3 section];
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_215F3F8F0[v3];
  }
}

- (int64_t)_returnKeyTypeForIndexPath:(id)a3
{
  v3 = [a3 section];
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_215F3F908[v3];
  }
}

- (int64_t)_autoCapitalizationTypeForIndexPath:(id)a3
{
  v3 = [a3 section];
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_215F3F920[v3];
  }
}

- (SKUIRedeemIdManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemIdManager initWithClientContext:]";
}

@end