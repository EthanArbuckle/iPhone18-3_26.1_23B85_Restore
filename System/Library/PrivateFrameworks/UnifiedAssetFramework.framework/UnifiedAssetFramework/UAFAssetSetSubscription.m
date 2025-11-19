@interface UAFAssetSetSubscription
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id)a3 error:(id *)a4;
- (UAFAssetSetSubscription)initWithCoder:(id)a3;
- (UAFAssetSetSubscription)initWithName:(id)a3 assetSets:(id)a4 usageAliases:(id)a5 expires:(id)a6;
- (id)description;
- (id)expirationAsString;
- (id)propertiesAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UAFAssetSetSubscription

- (UAFAssetSetSubscription)initWithName:(id)a3 assetSets:(id)a4 usageAliases:(id)a5 expires:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = UAFAssetSetSubscription;
  v15 = [(UAFAssetSetSubscription *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15 && v12 | v13)
  {
    objc_storeStrong(&v15->_name, a3);
    if (v12)
    {
      objc_storeStrong(p_isa + 2, a4);
    }

    if (v13)
    {
      objc_storeStrong(p_isa + 3, a5);
    }

    objc_storeStrong(p_isa + 4, a6);
    v17 = p_isa;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_assetSets forKey:@"assetSets"];
  [v5 encodeObject:self->_usageAliases forKey:@"usageAliases"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
}

- (UAFAssetSetSubscription)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"assetSets"];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"usageAliases"];

    if (!(v9 | v13))
    {
      v14 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = [(NSString *)self->_name UTF8String];
        *buf = 136315394;
        v21 = "[UAFAssetSetSubscription initWithCoder:]";
        v22 = 2080;
        v23 = v19;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Decoding of the subscription %s failed: both asset sets and usage aliases are nil", buf, 0x16u);
      }
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    self = [(UAFAssetSetSubscription *)self init:v5 assetSets:v9 usageAliases:v13 expires:v15];

    v16 = self;
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[UAFAssetSetSubscription initWithCoder:]";
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Decoding of the asset set subscription name failed", buf, 0xCu);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)propertiesAsDictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = [(UAFAssetSetSubscription *)self expirationAsString];
  v13[0] = @"name";
  v4 = [(UAFAssetSetSubscription *)self name];
  if (v4)
  {
    v5 = [(UAFAssetSetSubscription *)self name];
  }

  else
  {
    v5 = &stru_1F3B6B510;
  }

  v14[0] = v5;
  v13[1] = @"assetSets";
  v6 = [(UAFAssetSetSubscription *)self assetSets];
  if (v6)
  {
    v7 = [(UAFAssetSetSubscription *)self assetSets];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v14[1] = v7;
  v13[2] = @"usageAliases";
  v8 = [(UAFAssetSetSubscription *)self usageAliases];
  if (v8)
  {
    v9 = [(UAFAssetSetSubscription *)self usageAliases];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v13[3] = @"expiration";
  v14[2] = v9;
  v14[3] = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (v8)
  {
  }

  if (v6)
  {
  }

  if (v4)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  if (self == v8)
  {
    v12 = 1;
    goto LABEL_49;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_49;
  }

  v10 = v9;
  v11 = [(UAFAssetSetSubscription *)v10 name];
  if (v11 || ([(UAFAssetSetSubscription *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(UAFAssetSetSubscription *)v10 name];
    v5 = [(UAFAssetSetSubscription *)self name];
    if (([v4 isEqualToString:v5] & 1) == 0)
    {

      v12 = 0;
      goto LABEL_46;
    }

    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  v13 = [(UAFAssetSetSubscription *)v10 assetSets];
  if (!v13)
  {
    v40 = [(UAFAssetSetSubscription *)self assetSets];
    if (!v40)
    {
      v40 = 0;
      v39 = 0;
      goto LABEL_22;
    }
  }

  v14 = v3;
  v15 = [(UAFAssetSetSubscription *)v10 assetSets];
  v16 = [(UAFAssetSetSubscription *)self assetSets];
  if ([v15 isEqual:v16])
  {
    v34 = v15;
    v39 = 1;
    v3 = v14;
    v6 = v16;
LABEL_22:
    v17 = [(UAFAssetSetSubscription *)v10 usageAliases];
    if (v17 || ([(UAFAssetSetSubscription *)self usageAliases], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v37 = v11;
      v18 = v13;
      v19 = v5;
      v20 = v4;
      v21 = v6;
      v22 = [(UAFAssetSetSubscription *)v10 usageAliases];
      v35 = [(UAFAssetSetSubscription *)self usageAliases];
      v36 = v22;
      if (![v22 isEqual:v35])
      {
        v12 = 0;
        v6 = v21;
        v4 = v20;
        v5 = v19;
        v13 = v18;
        v11 = v37;
LABEL_37:

LABEL_38:
        if (!v17)
        {
        }

        if (v39)
        {
        }

        if (!v13)
        {
        }

        if (!v41)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v33 = v17;
      v32 = 1;
      v6 = v21;
      v4 = v20;
      v5 = v19;
      v13 = v18;
      v11 = v37;
    }

    else
    {
      v33 = 0;
      v30 = 0;
      v32 = 0;
    }

    v23 = [(UAFAssetSetSubscription *)v10 expiration];
    if (v23 || ([(UAFAssetSetSubscription *)self expiration], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v6;
      v38 = v3;
      v24 = [(UAFAssetSetSubscription *)v10 expiration:v28];
      v25 = [(UAFAssetSetSubscription *)self expiration];
      v12 = [v24 isEqual:v25];

      if (v23)
      {

        v6 = v31;
        if (!v32)
        {
          v3 = v38;
          v17 = v33;
          goto LABEL_38;
        }

        v3 = v38;
        v17 = v33;
        goto LABEL_37;
      }

      v3 = v38;
      v6 = v31;
      v26 = v29;
    }

    else
    {
      v26 = 0;
      v12 = 1;
    }

    v17 = v33;
    if ((v32 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v13)
  {
  }

  else
  {
  }

  v12 = 0;
  v3 = v14;
  if (v41)
  {
LABEL_45:
  }

LABEL_46:
  if (!v11)
  {
  }

LABEL_49:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSDictionary *)self->_assetSets hash]^ v3;
  v5 = [(NSDictionary *)self->_usageAliases hash];
  return v4 ^ v5 ^ [(NSDate *)self->_expiration hash];
}

- (id)expirationAsString
{
  v3 = [(UAFAssetSetSubscription *)self expiration];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E695DFE8] localTimeZone];
    [v4 setTimeZone:v5];

    v6 = [(UAFAssetSetSubscription *)self expiration];
    v7 = [v4 stringFromDate:v6];
  }

  else
  {
    v7 = @"never";
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UAFAssetSetSubscription *)self name];
  v5 = [(UAFAssetSetSubscription *)self assetSets];
  v6 = [(UAFAssetSetSubscription *)self usageAliases];
  v7 = [(UAFAssetSetSubscription *)self expirationAsString];
  v8 = [v3 stringWithFormat:@"Subscription '%@' with assetSets %@ and usageAliases %@ expires: %@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isValid:(id)a3 error:(id *)a4
{
  v138 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v6 = +[UAFConfigurationManager defaultManager];
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = [(UAFAssetSetSubscription *)self assetSets];
  v7 = [obj countByEnumeratingWithState:&v107 objects:v137 count:16];
  v98 = self;
  if (v7)
  {
    v8 = v7;
    v9 = *v108;
    v96 = v6;
    v91 = *v108;
    while (2)
    {
      v10 = 0;
      v92 = v8;
      do
      {
        if (*v108 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v107 + 1) + 8 * v10);
        v12 = [v96 getAssetSet:v11];
        if (!v12)
        {
          v6 = v96;
          if (a4)
          {
            v73 = MEMORY[0x1E696ABC0];
            v74 = *MEMORY[0x1E696A578];
            if (*a4)
            {
              v135[0] = *MEMORY[0x1E696A578];
              v75 = MEMORY[0x1E696AEC0];
              v76 = [(UAFAssetSetSubscription *)self name];
              v77 = [v75 stringWithFormat:@"Subscription %@ references unknown asset set %@", v76, v11];
              v135[1] = *MEMORY[0x1E696AA08];
              v78 = *a4;
              v136[0] = v77;
              v136[1] = v78;
              v79 = MEMORY[0x1E695DF20];
              v80 = v136;
              v81 = v135;
              v82 = 2;
            }

            else
            {
              v133 = *MEMORY[0x1E696A578];
              v89 = MEMORY[0x1E696AEC0];
              v76 = [(UAFAssetSetSubscription *)self name];
              v77 = [v89 stringWithFormat:@"Subscription %@ references unknown asset set %@", v76, v11];
              v134 = v77;
              v79 = MEMORY[0x1E695DF20];
              v80 = &v134;
              v81 = &v133;
              v82 = 1;
            }

            v90 = [v79 dictionaryWithObjects:v80 forKeys:v81 count:v82];
            *a4 = [v73 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v90];

            self = v98;
          }

          v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v85 = [(UAFAssetSetSubscription *)self name];
            *buf = 136315650;
            v121 = "[UAFAssetSetSubscription isValid:error:]";
            v122 = 2112;
            v123 = v85;
            v124 = 2112;
            v125 = v11;
            v86 = "%s Subscription %@ references unknown asset set %@";
LABEL_66:
            _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v86, buf, 0x20u);
          }

          goto LABEL_41;
        }

        v13 = v12;
        v14 = a4;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v15 = [(UAFAssetSetSubscription *)self assetSets];
        v95 = v11;
        v16 = [v15 objectForKeyedSubscript:v11];

        v17 = [v16 countByEnumeratingWithState:&v103 objects:v132 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v104;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v104 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v103 + 1) + 8 * i);
              v22 = [v13 usageTypes];
              v23 = [v22 containsObject:v21];

              if ((v23 & 1) == 0)
              {
                v6 = v96;
                if (v14)
                {
                  v38 = v14;
                  v94 = MEMORY[0x1E696ABC0];
                  v39 = *MEMORY[0x1E696A578];
                  if (*v14)
                  {
                    v130[0] = *MEMORY[0x1E696A578];
                    v40 = MEMORY[0x1E696AEC0];
                    v41 = [(UAFAssetSetSubscription *)v98 name];
                    v42 = [v40 stringWithFormat:@"Subscription %@ references unknown usage type %@ in asset set %@", v41, v21, v95];
                    v130[1] = *MEMORY[0x1E696AA08];
                    v43 = *v14;
                    v131[0] = v42;
                    v131[1] = v43;
                    v44 = MEMORY[0x1E695DF20];
                    v45 = v131;
                    v46 = v130;
                    v47 = 2;
                  }

                  else
                  {
                    v128 = *MEMORY[0x1E696A578];
                    v48 = MEMORY[0x1E696AEC0];
                    v41 = [(UAFAssetSetSubscription *)v98 name];
                    v42 = [v48 stringWithFormat:@"Subscription %@ references unknown usage type %@ in asset set %@", v41, v21, v95];
                    v129 = v42;
                    v44 = MEMORY[0x1E695DF20];
                    v45 = &v129;
                    v46 = &v128;
                    v47 = 1;
                  }

                  v49 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
                  *v38 = [v94 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v49];
                }

                v50 = UAFGetLogCategory(&UAFLogContextConfiguration);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v71 = [(UAFAssetSetSubscription *)v98 name];
                  *buf = 136315906;
                  v121 = "[UAFAssetSetSubscription isValid:error:]";
                  v122 = 2112;
                  v123 = v71;
                  v124 = 2112;
                  v125 = v21;
                  v126 = 2112;
                  v127 = v95;
                  v72 = "%s Subscription %@ references unknown usage type %@ in asset set %@";
LABEL_50:
                  _os_log_error_impl(&dword_1BCF2C000, v50, OS_LOG_TYPE_ERROR, v72, buf, 0x2Au);
                }

                goto LABEL_40;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v103 objects:v132 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        ++v10;
        v9 = v91;
        self = v98;
        a4 = v14;
      }

      while (v10 != v92);
      v8 = [obj countByEnumeratingWithState:&v107 objects:v137 count:16];
      v6 = v96;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [(UAFAssetSetSubscription *)self usageAliases];
  v24 = [obj countByEnumeratingWithState:&v99 objects:v119 count:16];
  if (v24)
  {
    v25 = v24;
    v93 = a4;
    v26 = *v100;
LABEL_21:
    v27 = 0;
    while (1)
    {
      if (*v100 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v99 + 1) + 8 * v27);
      v29 = [v6 getUsageAlias:v28 includeDeprecatedValues:0];
      if (!v29)
      {
        if (v93)
        {
          v53 = MEMORY[0x1E696ABC0];
          v54 = *MEMORY[0x1E696A578];
          if (*v93)
          {
            v117[0] = *MEMORY[0x1E696A578];
            v55 = MEMORY[0x1E696AEC0];
            v56 = [(UAFAssetSetSubscription *)self name];
            v57 = [v55 stringWithFormat:@"Subscription %@ references unknown usage alias %@", v56, v28];
            v117[1] = *MEMORY[0x1E696AA08];
            v118[0] = v57;
            v118[1] = *v93;
            v58 = MEMORY[0x1E695DF20];
            v59 = v118;
            v60 = v117;
            v61 = 2;
          }

          else
          {
            v115 = *MEMORY[0x1E696A578];
            v83 = MEMORY[0x1E696AEC0];
            v56 = [(UAFAssetSetSubscription *)self name];
            v57 = [v83 stringWithFormat:@"Subscription %@ references unknown usage alias %@", v56, v28];
            v116 = v57;
            v58 = MEMORY[0x1E695DF20];
            v59 = &v116;
            v60 = &v115;
            v61 = 1;
          }

          v84 = [v58 dictionaryWithObjects:v59 forKeys:v60 count:v61];
          *v93 = [v53 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v84];

          self = v98;
        }

        v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v85 = [(UAFAssetSetSubscription *)self name];
          *buf = 136315650;
          v121 = "[UAFAssetSetSubscription isValid:error:]";
          v122 = 2112;
          v123 = v85;
          v124 = 2112;
          v125 = v28;
          v86 = "%s Subscription %@ references unknown usage alias %@";
          goto LABEL_66;
        }

        goto LABEL_41;
      }

      v13 = v29;
      v30 = [(UAFAssetSetSubscription *)self usageAliases];
      v16 = [v30 objectForKeyedSubscript:v28];

      v31 = [v13 values];
      v32 = [v31 objectForKeyedSubscript:v16];

      if (!v32)
      {
        v33 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v121 = "[UAFAssetSetSubscription isValid:error:]";
          v122 = 2114;
          v123 = v28;
          v124 = 2114;
          v125 = v16;
          _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
        }

        v34 = [v6 getUsageAlias:v28 includeDeprecatedValues:1];

        v13 = v34;
      }

      v35 = [v13 values];
      v36 = [v35 objectForKeyedSubscript:v16];

      if (!v36)
      {
        break;
      }

      ++v27;
      self = v98;
      if (v25 == v27)
      {
        v25 = [obj countByEnumeratingWithState:&v99 objects:v119 count:16];
        v37 = 1;
        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_42;
      }
    }

    if (v93)
    {
      v62 = MEMORY[0x1E696ABC0];
      v63 = *MEMORY[0x1E696A578];
      if (*v93)
      {
        v113[0] = *MEMORY[0x1E696A578];
        v64 = MEMORY[0x1E696AEC0];
        v65 = [(UAFAssetSetSubscription *)v98 name];
        v66 = [v64 stringWithFormat:@"Subscription %@ references unknown value %@ in usage type %@", v65, v16, v28];
        v113[1] = *MEMORY[0x1E696AA08];
        v114[0] = v66;
        v114[1] = *v93;
        v67 = MEMORY[0x1E695DF20];
        v68 = v114;
        v69 = v113;
        v70 = 2;
      }

      else
      {
        v111 = *MEMORY[0x1E696A578];
        v87 = MEMORY[0x1E696AEC0];
        v65 = [(UAFAssetSetSubscription *)v98 name];
        v66 = [v87 stringWithFormat:@"Subscription %@ references unknown value %@ in usage type %@", v65, v16, v28];
        v112 = v66;
        v67 = MEMORY[0x1E695DF20];
        v68 = &v112;
        v69 = &v111;
        v70 = 1;
      }

      v88 = [v67 dictionaryWithObjects:v68 forKeys:v69 count:v70];
      *v93 = [v62 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v88];
    }

    v50 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v71 = [(UAFAssetSetSubscription *)v98 name];
      *buf = 136315906;
      v121 = "[UAFAssetSetSubscription isValid:error:]";
      v122 = 2112;
      v123 = v71;
      v124 = 2112;
      v125 = v16;
      v126 = 2112;
      v127 = v28;
      v72 = "%s Subscription %@ references unknown value %@ in usage type %@";
      goto LABEL_50;
    }

LABEL_40:

LABEL_41:
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

LABEL_42:

  v51 = *MEMORY[0x1E69E9840];
  return v37;
}

@end