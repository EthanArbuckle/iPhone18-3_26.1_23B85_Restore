@interface PSIGroupCache
- (PSIGroupCache)initWithDelegate:(id)delegate;
- (unint64_t)idOfGroupWithText:(id)text identifier:(id)identifier category:(unint64_t)category owningGroupId:(unint64_t)id;
@end

@implementation PSIGroupCache

- (unint64_t)idOfGroupWithText:(id)text identifier:(id)identifier category:(unint64_t)category owningGroupId:(unint64_t)id
{
  textCopy = text;
  identifierCopy = identifier;
  v12 = [[PSICachedGroup alloc] initWithText:textCopy identifier:identifierCopy category:category owningGroupId:id];
  v13 = [(NSMutableSet *)self->_groups member:v12];
  v14 = v13;
  ++self->_numberOfGroupsChecked;
  if (v13)
  {
    groupId = [v13 groupId];
  }

  else
  {
    [(NSMutableSet *)self->_groups addObject:v12];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    groupId = [WeakRetained updateGroupForText:textCopy identifier:identifierCopy category:category owningGroupId:id];

    [(PSICachedGroup *)v12 setGroupId:groupId];
    ++self->_numberOfGroupsQueried;
  }

  return groupId;
}

- (PSIGroupCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = PSIGroupCache;
  v5 = [(PSIGroupCache *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    groups = v5->_groups;
    v5->_groups = v6;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

@end