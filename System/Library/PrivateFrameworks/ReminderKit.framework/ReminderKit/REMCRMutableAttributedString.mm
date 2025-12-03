@interface REMCRMutableAttributedString
+ (NSArray)nonEditableAttributes;
- (BOOL)isEqual:(id)equal;
- (REMCRMutableAttributedString)initWithBackingStore:(id)store;
- (REMCRMutableAttributedString)initWithCoder:(id)coder;
- (REMCRMutableAttributedStringEditObserver)editObserver;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)string;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)reportDidEdit:(int64_t)edit range:(_NSRange)range changeInLength:(int64_t)length;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
@end

@implementation REMCRMutableAttributedString

- (REMCRMutableAttributedString)initWithBackingStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMCRMutableAttributedString;
  v6 = [(REMCRMutableAttributedString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, store);
  }

  return v7;
}

- (id)string
{
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  string = [backingStore string];

  return string;
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  v7 = [backingStore attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v99 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v65 = [MEMORY[0x1E695DFA8] set];
  v69.location = location;
  v69.length = length;
  if (length)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = [objc_opt_class() nonEditableAttributes];
    v68 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (!v68)
    {
LABEL_21:

      goto LABEL_22;
    }

    v64 = stringCopy;
    v67 = *v87;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v87 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v86 + 1) + 8 * i);
        array = [MEMORY[0x1E695DF70] array];
        backingStore = [(REMCRMutableAttributedString *)self backingStore];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __68__REMCRMutableAttributedString_replaceCharactersInRange_withString___block_invoke;
        v84[3] = &unk_1E7509240;
        v84[4] = self;
        v84[5] = v9;
        v12 = array;
        v85 = v12;
        [backingStore enumerateAttribute:v9 inRange:location options:v69.length usingBlock:{0, v84}];

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v70 = v12;
        reverseObjectEnumerator = [v12 reverseObjectEnumerator];
        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v80 objects:v97 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v81;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v81 != v16)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              rangeValue = [*(*(&v80 + 1) + 8 * j) rangeValue];
              v20 = v19;
              backingStore2 = [(REMCRMutableAttributedString *)self backingStore];
              [backingStore2 removeAttribute:v9 range:{rangeValue, v20}];

              [(REMCRMutableAttributedString *)self reportDidEdit:1 range:rangeValue changeInLength:v20, 0];
            }

            v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v80 objects:v97 count:16];
          }

          while (v15);
        }

        location = v69.location;
        if ([v70 count])
        {
          v22 = +[REMLog crdt];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = NSStringFromRange(v69);
            *buf = 134218754;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            v93 = 2112;
            v94 = v23;
            v95 = 2112;
            v96 = v70;
            _os_log_impl(&dword_19A0DB000, v22, OS_LOG_TYPE_INFO, "REMCRMutableAttributedString: Deleting portion of text within a non-editable attribute range. Removing the attribute {self: %p, key: %@, replacementRange: %@, ranges: %@}", buf, 0x2Au);
          }
        }
      }

      v68 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v68);
LABEL_20:
    stringCopy = v64;
    goto LABEL_21;
  }

  if ([stringCopy length])
  {
    if (location)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = [objc_opt_class() nonEditableAttributes];
      v41 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
      if (!v41)
      {
        goto LABEL_21;
      }

      v42 = v41;
      v64 = stringCopy;
      v43 = *v77;
      v44 = location - 1;
      v45 = v65;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v77 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v76 + 1) + 8 * k);
          v75.location = 0;
          v75.length = 0;
          backingStore3 = [(REMCRMutableAttributedString *)self backingStore];
          v49 = [backingStore3 attribute:v47 atIndex:v44 effectiveRange:&v75];

          if (v49)
          {
            if (location == v75.length + v75.location)
            {
              [v45 addObject:v47];
            }

            else
            {
              backingStore4 = [(REMCRMutableAttributedString *)self backingStore];
              [backingStore4 removeAttribute:v47 range:{v75.location, v75.length}];

              [(REMCRMutableAttributedString *)self reportDidEdit:1 range:v75.location changeInLength:v75.length, 0];
              v51 = +[REMLog crdt];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v101.location = location;
                v101.length = 0;
                v52 = NSStringFromRange(v101);
                v53 = NSStringFromRange(v75);
                *buf = 134218754;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v47;
                v93 = 2112;
                v94 = v52;
                v95 = 2112;
                v96 = v53;
                _os_log_impl(&dword_19A0DB000, v51, OS_LOG_TYPE_INFO, "REMCRMutableAttributedString: Inserting text within a non-editable attribute range. Removing the attribute {self: %p, key: %@, replacementRange: %@, attrRange: %@}", buf, 0x2Au);

                location = v69.location;
                v45 = v65;
              }
            }
          }
        }

        v42 = [obj countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v42);
      goto LABEL_20;
    }

    backingStore5 = [(REMCRMutableAttributedString *)self backingStore];
    v55 = [backingStore5 length];

    if (v55)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = [objc_opt_class() nonEditableAttributes];
      v56 = [obj countByEnumeratingWithState:&v71 objects:v90 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = stringCopy;
        v59 = *v72;
        do
        {
          for (m = 0; m != v57; ++m)
          {
            if (*v72 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = *(*(&v71 + 1) + 8 * m);
            *&buf[8] = 0;
            *buf = 0;
            backingStore6 = [(REMCRMutableAttributedString *)self backingStore];
            v63 = [backingStore6 attribute:v61 atIndex:0 effectiveRange:buf];

            if (v63)
            {
              [v65 addObject:v61];
            }
          }

          v57 = [obj countByEnumeratingWithState:&v71 objects:v90 count:16];
        }

        while (v57);
        stringCopy = v58;
        location = v69.location;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  backingStore7 = [(REMCRMutableAttributedString *)self backingStore];
  v25 = [backingStore7 length];

  backingStore8 = [(REMCRMutableAttributedString *)self backingStore];
  [backingStore8 replaceCharactersInRange:location withString:{v69.length, stringCopy}];

  backingStore9 = [(REMCRMutableAttributedString *)self backingStore];
  -[REMCRMutableAttributedString reportDidEdit:range:changeInLength:](self, "reportDidEdit:range:changeInLength:", 2, location, v69.length, [backingStore9 length] - v25);

  v28 = location;
  v29 = v65;
  if ([v65 count])
  {
    backingStore10 = [(REMCRMutableAttributedString *)self backingStore];
    v31 = [backingStore10 attributesAtIndex:v28 effectiveRange:0];

    v32 = [v31 mutableCopy];
    allObjects = [v65 allObjects];
    [v32 removeObjectsForKeys:allObjects];

    v34 = stringCopy;
    v35 = [stringCopy length];
    backingStore11 = [(REMCRMutableAttributedString *)self backingStore];
    v37 = [v32 copy];
    [backingStore11 setAttributes:v37 range:{v28, v35}];

    [(REMCRMutableAttributedString *)self reportDidEdit:1 range:v28 changeInLength:v35, 0];
    v38 = +[REMLog crdt];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v100.location = v28;
      v100.length = v35;
      v39 = NSStringFromRange(v100);
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v65;
      v93 = 2112;
      v94 = v39;
      _os_log_impl(&dword_19A0DB000, v38, OS_LOG_TYPE_INFO, "REMCRMutableAttributedString: Non-editable attributes were extended around the insertion point, now unapply the extension to the attributes {self: %p, keys: %@, range: %@}", buf, 0x20u);
    }

    stringCopy = v34;
    v29 = v65;
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __68__REMCRMutableAttributedString_replaceCharactersInRange_withString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v5 = [*(a1 + 32) backingStore];
    v6 = [v5 attribute:*(a1 + 40) atIndex:a3 effectiveRange:&v9];

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696B098] valueWithRange:{v9, v10}];
    [v7 addObject:v8];
  }
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  [backingStore setAttributes:attributesCopy range:{location, length}];

  [(REMCRMutableAttributedString *)self reportDidEdit:1 range:location changeInLength:length, 0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  v5 = [backingStore mutableCopyWithZone:zone];

  v6 = [[REMCRMutableAttributedString allocWithZone:?], "initWithBackingStore:", v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  [coderCopy encodeObject:backingStore forKey:@"backingStore"];
}

- (REMCRMutableAttributedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backingStore"];

  v6 = [(REMCRMutableAttributedString *)self initWithBackingStore:v5];
  return v6;
}

- (unint64_t)hash
{
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  v3 = [backingStore hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      backingStore = [(REMCRMutableAttributedString *)self backingStore];
      backingStore2 = [(REMCRMutableAttributedString *)v6 backingStore];
      if (backingStore == backingStore2)
      {
        v11 = 1;
      }

      else
      {
        backingStore3 = [(REMCRMutableAttributedString *)self backingStore];
        backingStore4 = [(REMCRMutableAttributedString *)v6 backingStore];
        v11 = [backingStore3 isEqual:backingStore4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  backingStore = [(REMCRMutableAttributedString *)self backingStore];
  v6 = [v3 stringWithFormat:@"<%@: %p backingStore: %@>", v4, self, backingStore];

  return v6;
}

+ (NSArray)nonEditableAttributes
{
  if (nonEditableAttributes_onceToken != -1)
  {
    +[REMCRMutableAttributedString nonEditableAttributes];
  }

  v3 = nonEditableAttributes_nonEditableList;

  return v3;
}

void __53__REMCRMutableAttributedString_nonEditableAttributes__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = +[REMTTHashtag attributeName];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = nonEditableAttributes_nonEditableList;
  nonEditableAttributes_nonEditableList = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (void)reportDidEdit:(int64_t)edit range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  editObserver = [(REMCRMutableAttributedString *)self editObserver];
  [editObserver mutableAttributedString:self didEdit:edit range:location changeInLength:{length, length}];
}

- (REMCRMutableAttributedStringEditObserver)editObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_editObserver);

  return WeakRetained;
}

@end