@interface TFFeedbackEntryGroup
- (TFFeedbackEntryGroup)initWithIdentifier:(id)a3 entries:(id)a4 title:(id)a5 election:(unint64_t)a6 headerText:(id)a7 headerTextLinkMap:(id)a8 footerText:(id)a9 footerTextLinkMap:(id)a10;
- (id)visibleEntryForIndex:(unint64_t)a3;
- (unint64_t)numberOfVisibleItemsForIncludeState:(BOOL)a3;
@end

@implementation TFFeedbackEntryGroup

- (TFFeedbackEntryGroup)initWithIdentifier:(id)a3 entries:(id)a4 title:(id)a5 election:(unint64_t)a6 headerText:(id)a7 headerTextLinkMap:(id)a8 footerText:(id)a9 footerTextLinkMap:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v42.receiver = self;
  v42.super_class = TFFeedbackEntryGroup;
  v23 = [(TFFeedbackEntryGroup *)&v42 init];
  if (v23)
  {
    v24 = [v16 copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [v17 copy];
    entries = v23->_entries;
    v23->_entries = v26;

    v28 = [v18 copy];
    title = v23->_title;
    v23->_title = v28;

    v23->_election = a6;
    v30 = [v19 copy];
    headerText = v23->_headerText;
    v23->_headerText = v30;

    if (v19)
    {
      v32 = [v20 copy];
    }

    else
    {
      v32 = 0;
    }

    headerTextLinkMap = v23->_headerTextLinkMap;
    v23->_headerTextLinkMap = v32;

    v34 = [v21 copy];
    footerText = v23->_footerText;
    v23->_footerText = v34;

    if (v21)
    {
      v36 = [v22 copy];
    }

    else
    {
      v36 = 0;
    }

    footerTextLinkMap = v23->_footerTextLinkMap;
    v23->_footerTextLinkMap = v36;

    election = v23->_election;
    v23->_toggleable = election != 0;
    if (election)
    {
      v39 = [[TFFeedbackEntryGroupToggle alloc] initWithGroupIdentifier:v16 title:v18];
    }

    else
    {
      v39 = 0;
    }

    groupToggleEntry = v23->_groupToggleEntry;
    v23->_groupToggleEntry = &v39->super;
  }

  return v23;
}

- (unint64_t)numberOfVisibleItemsForIncludeState:(BOOL)a3
{
  v3 = a3;
  v5 = [(TFFeedbackEntryGroup *)self isToggleable];
  if (![(TFFeedbackEntryGroup *)self isToggleable]|| v3)
  {
    v6 = [(TFFeedbackEntryGroup *)self entries];
    v5 = [v6 count] + v5;
  }

  return v5;
}

- (id)visibleEntryForIndex:(unint64_t)a3
{
  v5 = [(TFFeedbackEntryGroup *)self isToggleable];
  if (a3 || !v5)
  {
    v7 = a3 - v5;
    v8 = [(TFFeedbackEntryGroup *)self entries];
    v6 = [v8 objectAtIndex:v7];
  }

  else
  {
    v6 = [(TFFeedbackEntryGroup *)self groupToggleEntry];
  }

  return v6;
}

@end