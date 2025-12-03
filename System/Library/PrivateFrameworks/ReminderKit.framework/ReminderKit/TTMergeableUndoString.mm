@interface TTMergeableUndoString
- (TopoIDRange)insertAttributedString:(SEL)string after:(id)after before:(void *)before;
- (void)addUndoCommand:(id)command;
- (void)deleteSubstrings:(void *)substrings withCharacterRanges:(void *)ranges;
- (void)undeleteSubstrings:(void *)substrings;
@end

@implementation TTMergeableUndoString

- (void)addUndoCommand:(id)command
{
  commandCopy = command;
  objectsNeedingUpdatedRanges = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  [objectsNeedingUpdatedRanges addObject:commandCopy];

  delegate = [(TTMergeableString *)self delegate];
  [delegate addUndoCommand:commandCopy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:TTMergeableUndoStringDidAddUndoNotification object:self];
}

- (void)deleteSubstrings:(void *)substrings withCharacterRanges:(void *)ranges
{
  delegate = [(TTMergeableString *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(TTMergeableString *)self delegate];
    wantsUndoCommands = [delegate2 wantsUndoCommands];

    if (wantsUndoCommands)
    {
      v11 = objc_alloc_init(TTMergeableStringUndoEditCommand);
      v12 = *substrings;
      v13 = *(substrings + 1);
      while (v12 != v13)
      {
        v14 = *v12;
        if ((*(*v12 + 44) & 1) == 0)
        {
          insertStrings = [(TTMergeableStringUndoEditCommand *)v11 insertStrings];
          attributedString = [(TTMergeableString *)self attributedString];
          v17 = attributedString;
          if (*(v14 + 44))
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v14 + 16);
          }

          v19 = [attributedString attributedSubstringFromRange:{*(v14 + 40), v18}];
          v22 = *v14;
          v20 = *(v14 + 16);
          v23 = *(v14 + 8);
          v24 = v20;
          v25 = v19;
          std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::push_back[abi:ne200100](insertStrings, &v22);
        }

        ++v12;
      }

      [(TTMergeableUndoString *)self addUndoCommand:v11];
    }
  }

  v21.receiver = self;
  v21.super_class = TTMergeableUndoString;
  [(TTMergeableString *)&v21 deleteSubstrings:substrings withCharacterRanges:ranges];
}

- (void)undeleteSubstrings:(void *)substrings
{
  delegate = [(TTMergeableString *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(TTMergeableString *)self delegate];
    wantsUndoCommands = [delegate2 wantsUndoCommands];

    if (wantsUndoCommands)
    {
      v9 = objc_alloc_init(TTMergeableStringUndoEditCommand);
      v10 = *substrings;
      v11 = *(substrings + 1);
      while (v10 != v11)
      {
        *&v46 = *v10;
        v12 = *(v10 + 16);
        DWORD2(v46) = *(v10 + 8);
        LODWORD(v47) = v12;
        *(&v47 + 1) = *(v10 + 24);
        if (*(&v47 + 1))
        {
          std::vector<TopoIDRange>::push_back[abi:ne200100](-[TTMergeableStringUndoEditCommand deleteRanges](v9, "deleteRanges"), &v46);
          v13 = *(&v47 + 1);
        }

        else
        {
          v13 = 0;
        }

        v10 += 32;
      }

      deleteRanges = [(TTMergeableStringUndoEditCommand *)v9 deleteRanges];
      if (deleteRanges[1] == *deleteRanges)
      {

        return;
      }

      [(TTMergeableUndoString *)self addUndoCommand:v9];
    }
  }

  v46 = 0u;
  v47 = 0u;
  v48 = 1065353216;
  v15 = *substrings;
  v38 = *(substrings + 1);
  if (*substrings != v38)
  {
    do
    {
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v19)
      {
        __p = 0;
        v44 = 0;
        v45 = 0;
        v20 = v16;
        v40 = v20;
        v41 = v17;
        v42 = v18;
        if (self)
        {
          [(TTMergeableString *)self getSubstrings:&__p forTopoIDRange:&v40];
        }

        else
        {
        }

        v21 = v44;
        while (v21 != __p)
        {
          v23 = *(v21 - 1);
          v21 -= 8;
          v22 = v23;
          v39 = v23;
          if (*(v23 + 44) == 1)
          {
            v24 = *(v22 + 8);
            v25 = *(v22 + 16);
            attributedString = [(TTMergeableString *)self attributedString];
            v27 = [v19 attributedSubstringFromRange:{(v24 - v17), v25}];
            [attributedString insertAttributedString:v27 atIndex:*(v39 + 40)];

            *(v39 + 44) = 0;
            v28 = +[TTMergeableString unserialisedReplicaID];
            v29 = *(v39 + 24);
            *(v39 + 24) = v28;

            std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(&v46, &v39);
          }
        }

        [(TTMergeableString *)self updateSubstringIndexes];
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }
      }

      v15 += 32;
    }

    while (v15 != v38);
  }

  delegate3 = [(TTMergeableString *)self delegate];

  if (delegate3)
  {
    orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
    v32 = *orderedSubstrings;
    v33 = orderedSubstrings[1];
    if (*orderedSubstrings != v33)
    {
      v34 = 0;
      do
      {
        __p = *v32;
        if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v46, &__p))
        {
          v35 = *(__p + 4);
          delegate4 = [(TTMergeableString *)self delegate];
          [delegate4 edited:2 range:v34 changeInLength:{0, v35}];
        }

        if (*(__p + 44))
        {
          v37 = 0;
        }

        else
        {
          v37 = *(__p + 4);
        }

        v34 += v37;
        ++v32;
      }

      while (v32 != v33);
    }
  }

  [(TTMergeableString *)self setHasLocalChanges:1];
  [(TTMergeableString *)self coalesce];
  [(TTMergeableString *)self updateSubstringIndexes];
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v46);
}

- (TopoIDRange)insertAttributedString:(SEL)string after:(id)after before:(void *)before
{
  v13.receiver = self;
  v13.super_class = TTMergeableUndoString;
  result = [(TopoIDRange *)&v13 insertAttributedString:after after:before before:a6];
  if (retstr->var1)
  {
    result = [(TTMergeableString *)self delegate];
    v9 = result;
    if (result)
    {
      delegate = [(TTMergeableString *)self delegate];
      wantsUndoCommands = [delegate wantsUndoCommands];

      if (wantsUndoCommands)
      {
        v12 = objc_alloc_init(TTMergeableStringUndoEditCommand);
        std::vector<TopoIDRange>::push_back[abi:ne200100](-[TTMergeableStringUndoEditCommand deleteRanges](v12, "deleteRanges"), retstr);
        [(TTMergeableUndoString *)self addUndoCommand:v12];
      }
    }
  }

  return result;
}

@end