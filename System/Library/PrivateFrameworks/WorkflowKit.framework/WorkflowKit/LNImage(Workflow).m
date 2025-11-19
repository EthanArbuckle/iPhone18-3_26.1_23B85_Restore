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
  v1 = [a1 inImage];
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696E8D0]);
    v3 = [v2 encodeObject:v1];
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
      a1 = [a1 initWithINImage:v8];
      v9 = a1;
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

      v9 = 0;
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

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)spotlightIconWithParameterIdentifier:()Workflow
{
  v4 = a3;
  v5 = [a1 inImage];
  [a1 displayStyle];
  v6 = WFContextualActionIconDisplayStyleForLNImageDisplayStyle();
  if ([v5 _isSystem] && (objc_msgSend(v5, "_name"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "_imageData"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_5;
  }

  v10 = [v5 _uri];

  if (v10)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v8 = [objc_alloc(MEMORY[0x1E69E0A40]) initWithLNPropertyIdentifier:v4 displayStyle:v6];
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
  [v5 _retrieveImageFilePathWithReply:&v15];
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
    v8 = [a1 contextualActionIcon];
LABEL_6:
    v6 = v8;
  }

  return v6;
}

- (id)contextualActionIcon
{
  v2 = [a1 inImage];
  if ([v2 _isSystem] && (objc_msgSend(v2, "_name"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x1E69E0A40];
    v5 = [v2 _name];
    v6 = [v4 iconWithSystemName:v5];
  }

  else
  {
    [a1 displayStyle];
    v7 = WFContextualActionIconDisplayStyleForLNImageDisplayStyle();
    v8 = [v2 _imageData];

    if (v8)
    {
      v9 = MEMORY[0x1E69E0A40];
      v10 = [v2 _imageData];
      v11 = [v9 iconWithImageData:v10 scale:v7 displayStyle:0.0];
    }

    else
    {
      v12 = [v2 _uri];

      if (!v12)
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
        [v2 wf_transformUsingCodableAttribute:0 completionHandler:&v19];
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
      v10 = [v2 _uri];
      v11 = [v13 iconWithImageURL:v10 displayStyle:v7];
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
  v3 = [a1 inImage];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __29__LNImage_Workflow__wf_image__block_invoke;
  v16 = &unk_1E8375B50;
  v18 = &v19;
  v4 = v2;
  v17 = v4;
  [v3 wf_transformUsingCodableAttribute:0 completionHandler:&v13];

  v5 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = [v20[5] wf_image];
  v7 = [a1 inImage];
  v8 = [v7 _renderingMode];

  if (v8)
  {
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v6 imageWithRenderingMode:v9];

    v6 = v10;
  }

  v11 = [v6 imageWithDisplayStyle:{objc_msgSend(a1, "wfImageDisplayStyleFromLNImageDisplayStyle:", objc_msgSend(a1, "displayStyle"))}];

  _Block_object_dispose(&v19, 8);

  return v11;
}

@end