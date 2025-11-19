@interface WFAddToMediaLibraryContextualAction
- (BOOL)isEqual:(id)a3;
- (WFAddToMediaLibraryContextualAction)initWithCoder:(id)a3;
- (WFAddToMediaLibraryContextualAction)initWithMediaItemDescriptor:(id)a3;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAddToMediaLibraryContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAddToMediaLibraryContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mediaItemDescriptor forKey:{@"mediaItemDescriptor", v5.receiver, v5.super_class}];
}

- (WFAddToMediaLibraryContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFAddToMediaLibraryContextualAction;
  v5 = [(WFContextualAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaItemDescriptor"];
    if (v6)
    {
      objc_storeStrong(&v5->_mediaItemDescriptor, v6);
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Add %@ to Library");
  v5 = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFAddToMediaLibraryContextualAction;
  if ([(WFContextualAction *)&v13 isEqual:v4])
  {
    v5 = v4;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 mediaItemDescriptor];
      v7 = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v8 && v9)
        {
          v11 = [v8 isEqual:v9];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = WFAddToMediaLibraryContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v9, sel_hash)}];
  v5 = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  v6 = [v3 combine:v5];

  v7 = [v3 finalize];
  return v7;
}

- (id)uniqueIdentifier
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(WFContextualAction *)self identifier];
  v11[0] = v3;
  v4 = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  v5 = [v4 playbackStoreId];
  v6 = [v5 stringValue];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v7 componentsJoinedByString:@"."];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFAddToMediaLibraryContextualAction)initWithMediaItemDescriptor:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFAddToMediaLibraryContextualAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = WFLocalizedString(@"Add %@ to Library");
  v9 = [v6 name];
  v10 = [v7 stringWithFormat:v8, v9];

  v11 = WFLocalizedString(@"Add to Library");
  v12 = [v6 name];
  v13 = [WFContextualActionIcon iconWithSystemName:@"music.note.list"];
  v14 = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.addtoplaylist" wfActionIdentifier:@"is.workflow.actions.addtoplaylist" associatedAppBundleIdentifier:@"com.apple.Music" parameters:MEMORY[0x1E695E0F0] displayString:v10 title:v11 subtitle:v12 icon:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_mediaItemDescriptor, a3);
    v15 = v14;
  }

  return v14;
}

@end