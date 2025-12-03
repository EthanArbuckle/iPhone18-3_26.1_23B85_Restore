@interface LNImage(Workflow)
- (id)contextualActionIcon;
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
- (id)spotlightIconWithParameterIdentifier:()Workflow;
- (id)wf_image;
@end

@implementation LNImage(Workflow)

- (id)serializedRepresentation
{
  v11 = *MEMORY[0x1E69E9840];
  inImage = [self inImage];
  if (inImage)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696E8D0]);
    v3 = [v2 encodeObject:inImage];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[LNImage(Workflow) serializedRepresentation]";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to encode INImage into serialized representation.", &v9, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696E8C8]);
    v8 = [v7 decodeObjectOfClass:objc_opt_class() from:v4];
    if (v8)
    {
      self = [self initWithINImage:v8];
      selfCopy = self;
    }

    else
    {
      v10 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[LNImage(Workflow) initWithSerializedRepresentation:variableProvider:parameter:]";
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to decode INImage from serialized representation.", &v13, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[LNImage(Workflow) initWithSerializedRepresentation:variableProvider:parameter:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to decode INImage: no dictionaryRepresentation was provided.", &v13, 0xCu);
    }

    selfCopy = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)spotlightIconWithParameterIdentifier:()Workflow
{
  v4 = a3;
  inImage = [self inImage];
  [self displayStyle];
  v6 = WFContextualActionIconDisplayStyleForLNImageDisplayStyle();
  if ([inImage _isSystem] && (objc_msgSend(inImage, "_name"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(inImage, "_imageData"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_5;
  }

  _uri = [inImage _uri];

  if (_uri)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    contextualActionIcon = [objc_alloc(MEMORY[0x1E69E0A40]) initWithLNPropertyIdentifier:v4 displayStyle:v6];
    goto LABEL_6;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13635;
  v25 = __Block_byref_object_dispose__13636;
  v26 = 0;
  v11 = dispatch_semaphore_create(0);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __58__LNImage_Workflow__spotlightIconWithParameterIdentifier___block_invoke;
  v18 = &unk_1E8375B78;
  v20 = &v21;
  v12 = v11;
  v19 = v12;
  [inImage _retrieveImageFilePathWithReply:&v15];
  v13 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v12, v13);
  v14 = v22[5];
  if (v14)
  {
    v6 = [MEMORY[0x1E69E0A40] iconWithImageURL:v22[5] displayStyle:{v6, v15, v16, v17, v18}];
  }

  _Block_object_dispose(&v21, 8);
  if (!v14)
  {
LABEL_5:
    contextualActionIcon = [self contextualActionIcon];
LABEL_6:
    v6 = contextualActionIcon;
  }

  return v6;
}

- (id)contextualActionIcon
{
  inImage = [self inImage];
  if ([inImage _isSystem] && (objc_msgSend(inImage, "_name"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x1E69E0A40];
    _name = [inImage _name];
    v6 = [v4 iconWithSystemName:_name];
  }

  else
  {
    [self displayStyle];
    v7 = WFContextualActionIconDisplayStyleForLNImageDisplayStyle();
    _imageData = [inImage _imageData];

    if (_imageData)
    {
      v9 = MEMORY[0x1E69E0A40];
      _imageData2 = [inImage _imageData];
      v11 = [v9 iconWithImageData:_imageData2 scale:v7 displayStyle:0.0];
    }

    else
    {
      _uri = [inImage _uri];

      if (!_uri)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x3032000000;
        v28 = __Block_byref_object_copy__13635;
        v29 = __Block_byref_object_dispose__13636;
        v30 = 0;
        v15 = dispatch_semaphore_create(0);
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __41__LNImage_Workflow__contextualActionIcon__block_invoke;
        v22 = &unk_1E8375B50;
        v24 = &v25;
        v16 = v15;
        v23 = v16;
        [inImage wf_transformUsingCodableAttribute:0 completionHandler:&v19];
        v17 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v16, v17);
        v18 = v26[5];
        if (v18)
        {
          v6 = [MEMORY[0x1E69E0A40] iconWithImageData:v18 scale:v7 displayStyle:{0.0, v19, v20, v21, v22}];
        }

        else
        {
          v6 = 0;
        }

        _Block_object_dispose(&v25, 8);
        goto LABEL_9;
      }

      v13 = MEMORY[0x1E69E0A40];
      _imageData2 = [inImage _uri];
      v11 = [v13 iconWithImageURL:_imageData2 displayStyle:v7];
    }

    v6 = v11;
  }

LABEL_9:

  return v6;
}

- (id)wf_image
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13635;
  v23 = __Block_byref_object_dispose__13636;
  v24 = 0;
  v2 = dispatch_semaphore_create(0);
  inImage = [self inImage];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __29__LNImage_Workflow__wf_image__block_invoke;
  v16 = &unk_1E8375B50;
  v18 = &v19;
  v4 = v2;
  v17 = v4;
  [inImage wf_transformUsingCodableAttribute:0 completionHandler:&v13];

  v5 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v4, v5);
  wf_image = [v20[5] wf_image];
  inImage2 = [self inImage];
  _renderingMode = [inImage2 _renderingMode];

  if (_renderingMode)
  {
    if (_renderingMode == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = _renderingMode == 1;
    }

    v10 = [wf_image imageWithRenderingMode:v9];

    wf_image = v10;
  }

  v11 = [wf_image imageWithDisplayStyle:{objc_msgSend(self, "wfImageDisplayStyleFromLNImageDisplayStyle:", objc_msgSend(self, "displayStyle"))}];

  _Block_object_dispose(&v19, 8);

  return v11;
}

@end