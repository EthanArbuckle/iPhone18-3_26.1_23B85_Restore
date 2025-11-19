@interface SUUIObjectDescriptionFormatter
+ (id)descriptionForObject:(id)a3;
+ (id)descriptionForObject:(id)a3 options:(unint64_t)a4;
+ (id)descriptionForObject:(id)a3 properties:(id)a4;
+ (id)descriptionForObject:(id)a3 properties:(id)a4 options:(unint64_t)a5;
+ (id)formatValue:(id)a3 withOptions:(unint64_t)a4;
+ (id)scanPropertiesForObject:(id)a3;
@end

@implementation SUUIObjectDescriptionFormatter

+ (id)descriptionForObject:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [SUUIObjectDescriptionFormatter descriptionForObject:location[0] options:0];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)descriptionForObject:(id)a3 options:(unint64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = location[0];
  v6 = [location[0] descriptionDictionary];
  v7 = [SUUIObjectDescriptionFormatter descriptionForObject:"descriptionForObject:properties:options:" properties:v5 options:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)descriptionForObject:(id)a3 properties:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [SUUIObjectDescriptionFormatter descriptionForObject:location[0] properties:v7 options:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)descriptionForObject:(id)a3 properties:(id)a4 options:(unint64_t)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = a5;
  if (!v34)
  {
    v5 = [v36 scanPropertiesForObject:location[0]];
    v6 = v34;
    v34 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v32 = [MEMORY[0x277CCAB68] string];
  v7 = objc_opt_class();
  v23 = NSStringFromClass(v7);
  [v32 appendFormat:@"<%@", v23];
  MEMORY[0x277D82BD8](v23);
  if ((v33 & 1) == 0)
  {
    [v32 appendFormat:@": %p", location[0]];
  }

  v31 = [v34 allKeys];
  if ((v33 & 8) == 0)
  {
    if ((v33 & 4) != 0)
    {
      v22 = [v31 sortedArrayUsingSelector:sel_compare_];
      v21 = [v22 reverseObjectEnumerator];
      v8 = [v21 allObjects];
      v9 = v31;
      v31 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
    }

    else
    {
      v10 = [v31 sortedArrayUsingSelector:sel_compare_];
      v11 = v31;
      v31 = v10;
      MEMORY[0x277D82BD8](v11);
    }
  }

  if ((v33 & 0x10) != 0)
  {
    v12 = @"\n\t";
  }

  else
  {
    v12 = @" ";
  }

  v30 = MEMORY[0x277D82BE0](v12);
  memset(__b, 0, sizeof(__b));
  v19 = MEMORY[0x277D82BE0](v31);
  v20 = [v19 countByEnumeratingWithState:__b objects:v37 count:16];
  if (v20)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(v19);
      }

      v29 = *(__b[1] + 8 * v17);
      v27 = [v34 objectForKeyedSubscript:v29];
      if (v27 || (v33 & 0x20) == 0)
      {
        v26 = [v36 formatValue:v27 withOptions:v33];
        [v32 appendFormat:@"%@%@=%@", v30, v29, v26];
        objc_storeStrong(&v26, 0);
      }

      objc_storeStrong(&v27, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v19 countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v19);
  [v32 appendString:@">"];
  v14 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)formatValue:(id)a3 withOptions:(unint64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v16 = 0;
  v13 = 1;
  if (location[0])
  {
    objc_opt_class();
    v13 = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = location[0];
      v17 = [MEMORY[0x277CBEB68] null];
      v16 = 1;
      v13 = [v11 isEqual:?];
    }
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v13)
  {
    v20 = MEMORY[0x277D82BE0](@"(null)");
    v15 = 1;
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && (v18 & 2) != 0)
  {
    v20 = [location[0] debugDescription];
    v15 = 1;
  }

  else if ((v18 & 0x40) != 0)
  {
    v9 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v10 = NSStringFromClass(v4);
    v20 = [v9 stringWithFormat:@"<%@: %@>", v10, location[0]];
    MEMORY[0x277D82BD8](v10);
    v15 = 1;
  }

  else
  {
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_31;
    }

    v14 = MEMORY[0x277D82BE0](location[0]);
    if ([v14 length] <= 0x32)
    {
      v15 = 0;
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [v14 substringToIndex:47];
      v20 = [v7 stringWithFormat:@"%@... (length: %lu)", v8, objc_msgSend(v14, "length")];
      MEMORY[0x277D82BD8](v8);
      v15 = 1;
    }

    objc_storeStrong(&v14, 0);
    if (!v15)
    {
LABEL_31:
      if (v18 & 0x100) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (count: %lu)", location[0], objc_msgSend(location[0], "count")];
        v15 = 1;
      }

      else
      {
        v20 = [location[0] description];
        v15 = 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  v5 = v20;

  return v5;
}

+ (id)scanPropertiesForObject:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0;
  v3 = objc_opt_class();
  v10 = class_copyPropertyList(v3, &v11);
  for (i = 0; i < v11; ++i)
  {
    v8 = v10[i];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v8)];
    v6 = [location[0] valueForKey:v7];
    if (v6)
    {
      [v12 setObject:v6 forKeyedSubscript:v7];
    }

    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
  }

  free(v10);
  v5 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end