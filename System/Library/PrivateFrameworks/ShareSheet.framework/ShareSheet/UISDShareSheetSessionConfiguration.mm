@interface UISDShareSheetSessionConfiguration
- (UISDShareSheetSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISDShareSheetSessionConfiguration

- (UISDShareSheetSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UISDShareSheetSessionConfiguration *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_peopleProxies);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    peopleProxies = v5->_peopleProxies;
    v5->_peopleProxies = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = NSStringFromSelector(sel_shareProxies);
    v16 = [coderCopy decodeObjectOfClasses:v14 forKey:v15];
    shareProxies = v5->_shareProxies;
    v5->_shareProxies = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_actionProxies);
    v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
    actionProxies = v5->_actionProxies;
    v5->_actionProxies = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_nearbyCountSlotID);
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    nearbyCountSlotID = v5->_nearbyCountSlotID;
    v5->_nearbyCountSlotID = v26;

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_nearbyCountBadge);
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    nearbyCountBadge = v5->_nearbyCountBadge;
    v5->_nearbyCountBadge = v30;

    v32 = NSStringFromSelector(sel_wantsAnimation);
    v5->_wantsAnimation = [coderCopy decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_reloadData);
    v5->_reloadData = [coderCopy decodeBoolForKey:v33];

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = NSStringFromSelector(sel_peopleSuggestions);
    v38 = [coderCopy decodeObjectOfClasses:v36 forKey:v37];
    peopleSuggestions = v5->_peopleSuggestions;
    v5->_peopleSuggestions = v38;

    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = NSStringFromSelector(sel_restrictedActivityTypes);
    v44 = [coderCopy decodeObjectOfClasses:v42 forKey:v43];
    restrictedActivityTypes = v5->_restrictedActivityTypes;
    v5->_restrictedActivityTypes = v44;

    v46 = NSStringFromSelector(sel_shouldBlockPresentation);
    v5->_shouldBlockPresentation = [coderCopy decodeBoolForKey:v46];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  peopleProxies = self->_peopleProxies;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_peopleProxies);
  [coderCopy encodeObject:peopleProxies forKey:v6];

  shareProxies = self->_shareProxies;
  v8 = NSStringFromSelector(sel_shareProxies);
  [coderCopy encodeObject:shareProxies forKey:v8];

  actionProxies = self->_actionProxies;
  v10 = NSStringFromSelector(sel_actionProxies);
  [coderCopy encodeObject:actionProxies forKey:v10];

  nearbyCountSlotID = self->_nearbyCountSlotID;
  v12 = NSStringFromSelector(sel_nearbyCountSlotID);
  [coderCopy encodeObject:nearbyCountSlotID forKey:v12];

  nearbyCountBadge = self->_nearbyCountBadge;
  v14 = NSStringFromSelector(sel_nearbyCountBadge);
  [coderCopy encodeObject:nearbyCountBadge forKey:v14];

  wantsAnimation = self->_wantsAnimation;
  v16 = NSStringFromSelector(sel_wantsAnimation);
  [coderCopy encodeBool:wantsAnimation forKey:v16];

  reloadData = self->_reloadData;
  v18 = NSStringFromSelector(sel_reloadData);
  [coderCopy encodeBool:reloadData forKey:v18];

  peopleSuggestions = self->_peopleSuggestions;
  v20 = NSStringFromSelector(sel_peopleSuggestions);
  [coderCopy encodeObject:peopleSuggestions forKey:v20];

  restrictedActivityTypes = self->_restrictedActivityTypes;
  v22 = NSStringFromSelector(sel_restrictedActivityTypes);
  [coderCopy encodeObject:restrictedActivityTypes forKey:v22];

  shouldBlockPresentation = self->_shouldBlockPresentation;
  v24 = NSStringFromSelector(sel_shouldBlockPresentation);
  [coderCopy encodeBool:shouldBlockPresentation forKey:v24];
}

@end