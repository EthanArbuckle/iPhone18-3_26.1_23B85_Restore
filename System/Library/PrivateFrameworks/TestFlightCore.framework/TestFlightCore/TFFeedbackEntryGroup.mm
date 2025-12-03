@interface TFFeedbackEntryGroup
- (TFFeedbackEntryGroup)initWithIdentifier:(id)identifier entries:(id)entries title:(id)title election:(unint64_t)election headerText:(id)text headerTextLinkMap:(id)map footerText:(id)footerText footerTextLinkMap:(id)self0;
- (id)visibleEntryForIndex:(unint64_t)index;
- (unint64_t)numberOfVisibleItemsForIncludeState:(BOOL)state;
@end

@implementation TFFeedbackEntryGroup

- (TFFeedbackEntryGroup)initWithIdentifier:(id)identifier entries:(id)entries title:(id)title election:(unint64_t)election headerText:(id)text headerTextLinkMap:(id)map footerText:(id)footerText footerTextLinkMap:(id)self0
{
  identifierCopy = identifier;
  entriesCopy = entries;
  titleCopy = title;
  textCopy = text;
  mapCopy = map;
  footerTextCopy = footerText;
  linkMapCopy = linkMap;
  v42.receiver = self;
  v42.super_class = TFFeedbackEntryGroup;
  v23 = [(TFFeedbackEntryGroup *)&v42 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [entriesCopy copy];
    entries = v23->_entries;
    v23->_entries = v26;

    v28 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v28;

    v23->_election = election;
    v30 = [textCopy copy];
    headerText = v23->_headerText;
    v23->_headerText = v30;

    if (textCopy)
    {
      v32 = [mapCopy copy];
    }

    else
    {
      v32 = 0;
    }

    headerTextLinkMap = v23->_headerTextLinkMap;
    v23->_headerTextLinkMap = v32;

    v34 = [footerTextCopy copy];
    footerText = v23->_footerText;
    v23->_footerText = v34;

    if (footerTextCopy)
    {
      v36 = [linkMapCopy copy];
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
      v39 = [[TFFeedbackEntryGroupToggle alloc] initWithGroupIdentifier:identifierCopy title:titleCopy];
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

- (unint64_t)numberOfVisibleItemsForIncludeState:(BOOL)state
{
  stateCopy = state;
  isToggleable = [(TFFeedbackEntryGroup *)self isToggleable];
  if (![(TFFeedbackEntryGroup *)self isToggleable]|| stateCopy)
  {
    entries = [(TFFeedbackEntryGroup *)self entries];
    isToggleable = [entries count] + isToggleable;
  }

  return isToggleable;
}

- (id)visibleEntryForIndex:(unint64_t)index
{
  isToggleable = [(TFFeedbackEntryGroup *)self isToggleable];
  if (index || !isToggleable)
  {
    v7 = index - isToggleable;
    entries = [(TFFeedbackEntryGroup *)self entries];
    groupToggleEntry = [entries objectAtIndex:v7];
  }

  else
  {
    groupToggleEntry = [(TFFeedbackEntryGroup *)self groupToggleEntry];
  }

  return groupToggleEntry;
}

@end