@interface PETConfigValidator
+ (BOOL)_groupConfigIsValid:(id)valid;
+ (BOOL)_messageConfigIsValid:(id)valid;
+ (BOOL)configIsValid:(id)valid;
@end

@implementation PETConfigValidator

+ (BOOL)_messageConfigIsValid:(id)valid
{
  v54 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"device_sampling"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of device sampling!", buf, 2u);
    }

    v30 = 0;
  }

  else
  {
    v5 = [validCopy objectForKeyedSubscript:@"device_sampling_seed"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of seed device sampling!", buf, 2u);
      }

      v30 = 0;
    }

    else
    {
      v6 = [validCopy objectForKeyedSubscript:@"message_sampling"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message sampling!", buf, 2u);
        }

        v30 = 0;
      }

      else
      {
        v7 = [validCopy objectForKeyedSubscript:@"sig_figs"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sig figs!", buf, 2u);
          }

          v30 = 0;
        }

        else
        {
          v8 = [validCopy objectForKeyedSubscript:@"aggregated"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of aggregated!", buf, 2u);
            }

            v30 = 0;
          }

          else
          {
            v9 = [validCopy objectForKeyedSubscript:@"field_whitelist"];
            if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of field whitelist!", buf, 2u);
              }

              v30 = 0;
            }

            else
            {
              v35 = v8;
              v36 = v7;
              v37 = v9;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v10 = v9;
              v11 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v47;
                while (2)
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v47 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v46 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of field in field whitelist!", buf, 2u);
                      }

                      v30 = 0;
                      v16 = v10;
                      goto LABEL_62;
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
                  if (v12)
                  {
                    continue;
                  }

                  break;
                }
              }

              v16 = [validCopy objectForKeyedSubscript:@"hist_buckets"];
              if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of histogram buckets!", buf, 2u);
                }

                v30 = 0;
LABEL_62:
                v8 = v35;
                v7 = v36;
              }

              else
              {
                v33 = v6;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v16 = v16;
                v17 = [v16 countByEnumeratingWithState:&v42 objects:v52 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v43;
                  while (2)
                  {
                    v20 = v16;
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v43 != v19)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v22 = *(*(&v42 + 1) + 8 * j);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of bucket in histogram buckets!", buf, 2u);
                        }

                        v30 = 0;
                        v16 = v20;
                        v23 = v20;
                        goto LABEL_69;
                      }
                    }

                    v16 = v20;
                    v18 = [v20 countByEnumeratingWithState:&v42 objects:v52 count:16];
                    if (v18)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v23 = [validCopy objectForKeyedSubscript:@"nested_fields"];
                if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of nested fields!", buf, 2u);
                  }

                  v30 = 0;
LABEL_69:
                  v8 = v35;
                  v7 = v36;
                  v6 = v33;
                }

                else
                {
                  v38 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v41 = 0u;
                  obj = v23;
                  v24 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v39;
                    v6 = v33;
                    while (2)
                    {
                      for (k = 0; k != v25; ++k)
                      {
                        if (*v39 != v26)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v28 = *(*(&v38 + 1) + 8 * k);
                        if (![v28 integerValue])
                        {
                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected value of field string in nested fields!", buf, 2u);
                          }

                          goto LABEL_82;
                        }

                        v29 = [obj objectForKeyedSubscript:v28];
                        if (v29)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected value of message name in nested fields!", buf, 2u);
                            }

LABEL_82:
                            v30 = 0;
                            goto LABEL_83;
                          }
                        }
                      }

                      v25 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
                      v30 = 1;
                      if (v25)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v30 = 1;
                    v6 = v33;
                  }

LABEL_83:
                  v23 = obj;

                  v8 = v35;
                  v7 = v36;
                }
              }

              v9 = v37;
            }
          }
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (BOOL)_groupConfigIsValid:(id)valid
{
  v30 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"device_sampling"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group device sampling!", buf, 2u);
    }

    v17 = 0;
  }

  else
  {
    v5 = [validCopy objectForKeyedSubscript:@"device_sampling_seed"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group seed device sampling!", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      v6 = [validCopy objectForKeyedSubscript:@"message_sampling"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group message sampling!", buf, 2u);
        }

        v17 = 0;
      }

      else
      {
        v7 = [validCopy objectForKeyedSubscript:@"sampling_limit"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sampling limit!", buf, 2u);
          }

          v17 = 0;
        }

        else
        {
          v8 = [validCopy objectForKeyedSubscript:@"sig_figs"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sig_figs!", buf, 2u);
            }

            v17 = 0;
          }

          else
          {
            v9 = [validCopy objectForKeyedSubscript:@"aggregated"];
            if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of aggregated!", buf, 2u);
              }

              v17 = 0;
            }

            else
            {
              v10 = [validCopy objectForKeyedSubscript:@"message_whitelist"];
              if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message whitelist!", buf, 2u);
                }

                v17 = 0;
              }

              else
              {
                v22 = v9;
                v23 = v8;
                v26 = 0u;
                v27 = 0u;
                v24 = 0u;
                v25 = 0u;
                v21 = v10;
                allValues = [v10 allValues];
                v12 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v25;
                  v20 = v7;
                  while (2)
                  {
                    for (i = 0; i != v13; ++i)
                    {
                      if (*v25 != v14)
                      {
                        objc_enumerationMutation(allValues);
                      }

                      v16 = *(*(&v24 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v7 = v20;
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message config!", buf, 2u);
                        }

                        v17 = 0;
                        goto LABEL_51;
                      }

                      if (![objc_opt_class() _messageConfigIsValid:v16])
                      {
                        v17 = 0;
                        v7 = v20;
                        goto LABEL_51;
                      }
                    }

                    v13 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
                    v17 = 1;
                    v7 = v20;
                    if (v13)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v17 = 1;
                }

LABEL_51:

                v9 = v22;
                v8 = v23;
                v10 = v21;
              }
            }
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)configIsValid:(id)valid
{
  v26 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v15 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "unexpected type of config version!";
LABEL_24:
    _os_log_error_impl(&dword_1DF726000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_16;
  }

  v6 = [validCopy objectForKeyedSubscript:@"message_groups"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "unexpected type of message groups configuration!";
    goto LABEL_24;
  }

  v8 = [validCopy objectForKeyedSubscript:@"message_groups"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [v8 allValues];
  v10 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message group configuration!", buf, 2u);
          }

LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }

        if (![objc_opt_class() _groupConfigIsValid:v14])
        {
          goto LABEL_20;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      v15 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

@end