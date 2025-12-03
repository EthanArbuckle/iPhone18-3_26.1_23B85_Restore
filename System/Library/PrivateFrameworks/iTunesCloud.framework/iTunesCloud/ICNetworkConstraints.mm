@interface ICNetworkConstraints
+ (id)constraintsForSystemApplicationType:(int64_t)type;
+ (id)mediaTypeNetworkConstraintsFromURLBag:(id)bag;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldAllowDataForNetworkType:(int64_t)type;
- (ICNetworkConstraints)init;
- (ICNetworkConstraints)initWithBundleIdentifier:(id)identifier;
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sizeLimitForNetworkType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation ICNetworkConstraints

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  v6 = [[(objc_class *)class allocWithZone:zone] init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = self->_dataAllowedFallbackValue;
    v8 = [(NSMutableDictionary *)self->_networkTypeToDataAllowed copyWithZone:zone];
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v10 = [(NSMutableDictionary *)self->_networkTypeToSizeLimit copyWithZone:zone];
    v11 = *(v7 + 3);
    *(v7 + 3) = v10;

    *(v7 + 9) = self->_cellularDataAllowedFallbackValue;
    *(v7 + 10) = self->_wiFiDataAllowedFallbackValue;
  }

  return v7;
}

- (id)sizeLimitForNetworkType:(int64_t)type
{
  networkTypeToSizeLimit = self->_networkTypeToSizeLimit;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)networkTypeToSizeLimit objectForKey:v4];

  return v5;
}

- (BOOL)shouldAllowDataForNetworkType:(int64_t)type
{
  networkTypeToDataAllowed = self->_networkTypeToDataAllowed;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)networkTypeToDataAllowed objectForKey:v6];

  if (v7)
  {
    cellularDataAllowedFallbackValue = [v7 BOOLValue];
  }

  else if (self->_dataAllowedFallbackValue)
  {
    if ((type - 1) > 0x1F2)
    {
      cellularDataAllowedFallbackValue = (type - 1000) > 0x3E7 || self->_wiFiDataAllowedFallbackValue;
    }

    else
    {
      cellularDataAllowedFallbackValue = self->_cellularDataAllowedFallbackValue;
    }
  }

  else
  {
    cellularDataAllowedFallbackValue = 0;
  }

  return cellularDataAllowedFallbackValue & 1;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICNetworkConstraints *)self _copyWithClass:v5 zone:zone];
}

+ (id)constraintsForSystemApplicationType:(int64_t)type
{
  v3 = ICBundleIdentifierForSystemApplicationType(type);
  v4 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v3];

  return v4;
}

+ (id)mediaTypeNetworkConstraintsFromURLBag:(id)bag
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = [bag arrayForBagKey:@"mobile-network-constraints"];
  if (_NSIsNSArray())
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (!v6)
    {
      goto LABEL_60;
    }

    v7 = v6;
    v8 = *v53;
    v37 = v5;
    v40 = *v53;
    while (1)
    {
      v9 = 0;
      v41 = v7;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        if (!_NSIsNSDictionary())
        {
          goto LABEL_58;
        }

        v11 = [v10 objectForKey:@"kinds"];
        if (!_NSIsNSArray() || ![v11 count])
        {
          goto LABEL_57;
        }

        v12 = [v10 objectForKey:@"enabled"];
        v42 = v12;
        v43 = v9;
        if (v12)
        {
          v13 = v12;
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 BOOLValue] & 1) == 0)
          {
            v16 = objc_alloc_init(ICMutableNetworkConstraints);
            [(ICMutableNetworkConstraints *)v16 setShouldAllowDataForAllNetworkTypes:0];
            goto LABEL_47;
          }
        }

        v14 = [v10 objectForKey:{@"size-limits", v36}];
        v15 = _NSIsNSDictionary();
        v16 = objc_alloc_init(ICMutableNetworkConstraints);
        if (!v15)
        {
          goto LABEL_45;
        }

        v38 = v14;
        v39 = v11;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v17 = v14;
        v18 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (!v18)
        {
          goto LABEL_44;
        }

        v19 = v18;
        v20 = *v49;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v48 + 1) + 8 * i);
            v23 = [v17 objectForKey:v22];
            if (_NSIsNSString())
            {
              if (objc_opt_respondsToSelector())
              {
                longLongValue = [v23 longLongValue];
                if (longLongValue)
                {
                  v25 = longLongValue;
                  v26 = v22;
                  if ([v26 isEqualToString:@"2G"])
                  {
                    v27 = 1;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"3G"])
                  {
                    v27 = 2;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"4G"])
                  {
                    v27 = 3;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"5G"])
                  {
                    v27 = 4;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"6G"])
                  {
                    v27 = 5;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"7G"])
                  {
                    v27 = 6;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"8G"])
                  {
                    v27 = 7;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"9G"])
                  {
                    v27 = 8;
                    goto LABEL_40;
                  }

                  if ([v26 isEqualToString:@"WiFi"])
                  {
                    v27 = 1000;
LABEL_40:

                    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
                    [(ICMutableNetworkConstraints *)v16 setSizeLimit:v26 forNetworkType:v27];
                  }
                }
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v19);
LABEL_44:

        v5 = v37;
        v14 = v38;
        v11 = v39;
LABEL_45:

LABEL_47:
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v28 = v11;
        v29 = v11;
        v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v45;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v44 + 1) + 8 * j);
              if (_NSIsNSString())
              {
                [v4 setObject:v16 forKey:v34];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v31);
        }

        v8 = v40;
        v7 = v41;
        v9 = v43;
        v11 = v28;
LABEL_57:

LABEL_58:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (!v7)
      {
LABEL_60:

        v3 = v36;
        goto LABEL_62;
      }
    }
  }

  v4 = 0;
LABEL_62:

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (![(ICNetworkConstraints *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_dataAllowedFallbackValue != v5->_dataAllowedFallbackValue || self->_cellularDataAllowedFallbackValue != v5->_cellularDataAllowedFallbackValue || self->_wiFiDataAllowedFallbackValue != v5->_wiFiDataAllowedFallbackValue)
  {
    goto LABEL_8;
  }

  networkTypeToDataAllowed = v5->_networkTypeToDataAllowed;
  v8 = self->_networkTypeToDataAllowed;
  v9 = v8;
  if (v8 == networkTypeToDataAllowed)
  {

    goto LABEL_14;
  }

  v10 = [(NSMutableDictionary *)v8 isEqual:networkTypeToDataAllowed];

  if (v10)
  {
LABEL_14:
    networkTypeToSizeLimit = self->_networkTypeToSizeLimit;
    v14 = v6->_networkTypeToSizeLimit;
    v15 = networkTypeToSizeLimit;
    v16 = v15;
    if (v15 == v14)
    {
      v11 = 1;
    }

    else
    {
      v11 = [(NSMutableDictionary *)v15 isEqual:v14];
    }

    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

LABEL_12:
  return v11;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v17 = v14 + v13;
  v118 = __ROR8__(v17, 32);
  v122 = v16 ^ __ROR8__(v15, 43);
  v110 = v16 ^ v11;
  v114 = v17 ^ __ROR8__(v13, 47);

  v18 = self->_dataAllowedFallbackValue | (self->_cellularDataAllowedFallbackValue << 32);
  v19 = (v110 + v114) ^ __ROR8__(v114, 51);
  v20 = v118 + (v122 ^ v18);
  v21 = __ROR8__(v122 ^ v18, 48);
  v22 = (v20 ^ v21) + __ROR8__(v110 + v114, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v19;
  v119 = __ROR8__(v24, 32);
  v123 = v23;
  v111 = v22 ^ v18;
  v115 = v24 ^ __ROR8__(v19, 47);
  v126 = self->_wiFiDataAllowedFallbackValue | 0x1400000000000000;
  v25 = self->_networkTypeToDataAllowed;
  v26 = [(NSMutableDictionary *)v25 hash];
  v27 = v126;
  if ((v126 & 0x400000000000000) != 0)
  {
    v46 = v126 & 0xFFFFFFFFFFFFFFLL | (v26 << 32);
    v47 = (v111 + v115) ^ __ROR8__(v115, 51);
    v48 = v119 + (v123 ^ v46);
    v49 = __ROR8__(v123 ^ v46, 48);
    v50 = (v48 ^ v49) + __ROR8__(v111 + v115, 32);
    v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
    v52 = v48 + v47;
    v120 = __ROR8__(v52, 32);
    v124 = v51;
    v112 = v50 ^ v46;
    v116 = v52 ^ __ROR8__(v47, 47);
    v45 = (v126 & 0xFF00000000000000) + HIDWORD(v26) + 0x800000000000000;
  }

  else
  {
    v28 = v111;
    v30 = v119;
    v29 = v115;
    v31 = v123;
    if ((v126 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v32 = (v111 + v115) ^ __ROR8__(v115, 51);
      v33 = v119 + (v123 ^ v126 & 0xFFFFFFFFFFFFFFLL);
      v34 = __ROR8__(v123 ^ v126 & 0xFFFFFFFFFFFFFFLL, 48);
      v35 = (v33 ^ v34) + __ROR8__(v111 + v115, 32);
      v31 = v35 ^ __ROR8__(v33 ^ v34, 43);
      v36 = v33 + v32;
      v29 = v36 ^ __ROR8__(v32, 47);
      v30 = __ROR8__(v36, 32);
      v28 = v35 ^ v126 & 0xFFFFFFFFFFFFFFLL;
      v27 = v126 & 0xFF00000000000000;
    }

    v37 = v31 ^ v26;
    v38 = v28 + v29;
    v39 = (v28 + v29) ^ __ROR8__(v29, 51);
    v40 = v30 + v37;
    v41 = __ROR8__(v37, 48);
    v42 = (v40 ^ v41) + __ROR8__(v38, 32);
    v43 = v42 ^ __ROR8__(v40 ^ v41, 43);
    v44 = v40 + v39;
    v120 = __ROR8__(v44, 32);
    v124 = v43;
    v112 = v42 ^ v26;
    v116 = v44 ^ __ROR8__(v39, 47);
    v45 = v27 + 0x800000000000000;
  }

  v127 = v45;

  v53 = self->_networkTypeToSizeLimit;
  v54 = [(NSMutableDictionary *)v53 hash];
  v55 = v127;
  if ((v127 & 0x400000000000000) != 0)
  {
    v74 = v127 & 0xFFFFFFFFFFFFFFLL | (v54 << 32);
    v75 = (v112 + v116) ^ __ROR8__(v116, 51);
    v76 = v120 + (v124 ^ v74);
    v77 = __ROR8__(v124 ^ v74, 48);
    v78 = (v76 ^ v77) + __ROR8__(v112 + v116, 32);
    v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
    v80 = v76 + v75;
    v121 = __ROR8__(v80, 32);
    v125 = v79;
    v113 = v78 ^ v74;
    v117 = v80 ^ __ROR8__(v75, 47);
    v73 = (v127 & 0xFF00000000000000) + HIDWORD(v54) + 0x800000000000000;
  }

  else
  {
    v56 = v112;
    v58 = v120;
    v57 = v116;
    v59 = v124;
    if ((v127 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v60 = (v112 + v116) ^ __ROR8__(v116, 51);
      v61 = v120 + (v124 ^ v127 & 0xFFFFFFFFFFFFFFLL);
      v62 = __ROR8__(v124 ^ v127 & 0xFFFFFFFFFFFFFFLL, 48);
      v63 = (v61 ^ v62) + __ROR8__(v112 + v116, 32);
      v59 = v63 ^ __ROR8__(v61 ^ v62, 43);
      v64 = v61 + v60;
      v57 = v64 ^ __ROR8__(v60, 47);
      v58 = __ROR8__(v64, 32);
      v56 = v63 ^ v127 & 0xFFFFFFFFFFFFFFLL;
      v55 = v127 & 0xFF00000000000000;
    }

    v65 = v59 ^ v54;
    v66 = v56 + v57;
    v67 = (v56 + v57) ^ __ROR8__(v57, 51);
    v68 = v58 + v65;
    v69 = __ROR8__(v65, 48);
    v70 = (v68 ^ v69) + __ROR8__(v66, 32);
    v71 = v70 ^ __ROR8__(v68 ^ v69, 43);
    v72 = v68 + v67;
    v121 = __ROR8__(v72, 32);
    v125 = v71;
    v113 = v70 ^ v54;
    v117 = v72 ^ __ROR8__(v67, 47);
    v73 = v55 + 0x800000000000000;
  }

  v128 = v73;

  v81 = (v113 + v117) ^ __ROR8__(v117, 51);
  v82 = v121 + (v125 ^ v128);
  v83 = __ROR8__(v125 ^ v128, 48);
  v84 = (v82 ^ v83) + __ROR8__(v113 + v117, 32);
  v85 = v84 ^ __ROR8__(v82 ^ v83, 43);
  v86 = v82 + v81;
  v87 = v86 ^ __ROR8__(v81, 47);
  v88 = (v84 ^ v128) + v87;
  v89 = v88 ^ __ROR8__(v87, 51);
  v90 = (__ROR8__(v86, 32) ^ 0xFFLL) + v85;
  v91 = __ROR8__(v85, 48);
  v92 = __ROR8__(v88, 32) + (v90 ^ v91);
  v93 = v92 ^ __ROR8__(v90 ^ v91, 43);
  v94 = v89 + v90;
  v95 = v94 ^ __ROR8__(v89, 47);
  v96 = v95 + v92;
  v97 = v96 ^ __ROR8__(v95, 51);
  v98 = __ROR8__(v94, 32) + v93;
  v99 = __ROR8__(v93, 48);
  v100 = __ROR8__(v96, 32) + (v98 ^ v99);
  v101 = v100 ^ __ROR8__(v98 ^ v99, 43);
  v102 = v97 + v98;
  v103 = v102 ^ __ROR8__(v97, 47);
  v104 = v103 + v100;
  v105 = v104 ^ __ROR8__(v103, 51);
  v106 = __ROR8__(v102, 32) + v101;
  v107 = __ROR8__(v101, 48);
  v108 = __ROR8__(v104, 32) + (v106 ^ v107);
  return (v105 + v106) ^ __ROR8__(v105, 47) ^ v108 ^ __ROR8__(v105 + v106, 32) ^ v108 ^ __ROR8__(v106 ^ v107, 43);
}

- (ICNetworkConstraints)initWithBundleIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(ICNetworkConstraints *)self init];
  if (v5)
  {
    v6 = _CTServerConnectionCreateOnTargetQueue();
    if (v6)
    {
      v7 = v6;
      _CTServerConnectionCopyCellularUsagePolicy();
      CFRelease(v7);
    }
  }

  return v5;
}

- (ICNetworkConstraints)init
{
  v3.receiver = self;
  v3.super_class = ICNetworkConstraints;
  result = [(ICNetworkConstraints *)&v3 init];
  if (result)
  {
    *&result->_dataAllowedFallbackValue = 257;
    result->_wiFiDataAllowedFallbackValue = 1;
  }

  return result;
}

@end