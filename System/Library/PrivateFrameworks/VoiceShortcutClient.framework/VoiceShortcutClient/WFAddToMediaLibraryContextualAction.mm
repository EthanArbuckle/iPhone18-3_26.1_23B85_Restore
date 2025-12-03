@interface WFAddToMediaLibraryContextualAction
- (BOOL)isEqual:(id)equal;
- (WFAddToMediaLibraryContextualAction)initWithCoder:(id)coder;
- (WFAddToMediaLibraryContextualAction)initWithMediaItemDescriptor:(id)descriptor;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAddToMediaLibraryContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAddToMediaLibraryContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_mediaItemDescriptor forKey:{@"mediaItemDescriptor", v5.receiver, v5.super_class}];
}

- (WFAddToMediaLibraryContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFAddToMediaLibraryContextualAction;
  v5 = [(WFContextualAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaItemDescriptor"];
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
  mediaItemDescriptor = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  name = [mediaItemDescriptor name];
  v7 = [v3 stringWithFormat:v4, name];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = WFAddToMediaLibraryContextualAction;
  if ([(WFContextualAction *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      mediaItemDescriptor = [v5 mediaItemDescriptor];
      mediaItemDescriptor2 = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
      v8 = mediaItemDescriptor;
      v9 = mediaItemDescriptor2;
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
  mediaItemDescriptor = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  v6 = [v3 combine:mediaItemDescriptor];

  v7 = [v3 finalize];
  return v7;
}

- (id)uniqueIdentifier
{
  v11[2] = *MEMORY[0x1E69E9840];
  identifier = [(WFContextualAction *)self identifier];
  v11[0] = identifier;
  mediaItemDescriptor = [(WFAddToMediaLibraryContextualAction *)self mediaItemDescriptor];
  playbackStoreId = [mediaItemDescriptor playbackStoreId];
  stringValue = [playbackStoreId stringValue];
  v11[1] = stringValue;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v7 componentsJoinedByString:@"."];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFAddToMediaLibraryContextualAction)initWithMediaItemDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAddToMediaLibraryContextualAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = WFLocalizedString(@"Add %@ to Library");
  name = [descriptorCopy name];
  v10 = [v7 stringWithFormat:v8, name];

  v11 = WFLocalizedString(@"Add to Library");
  name2 = [descriptorCopy name];
  v13 = [WFContextualActionIcon iconWithSystemName:@"music.note.list"];
  v14 = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.addtoplaylist" wfActionIdentifier:@"is.workflow.actions.addtoplaylist" associatedAppBundleIdentifier:@"com.apple.Music" parameters:MEMORY[0x1E695E0F0] displayString:v10 title:v11 subtitle:name2 icon:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_mediaItemDescriptor, descriptor);
    v15 = v14;
  }

  return v14;
}

@end