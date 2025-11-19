@interface SUSReleaseNotesProcessor
+ (id)sharedInstance;
- (id)normalizeHtmlReleaseNotes:(id)a3;
- (id)normalizeHtmlReleaseNotes:(id)a3 withAdditionalCSS:(id)a4;
@end

@implementation SUSReleaseNotesProcessor

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance;

  return v2;
}

double __42__SUSReleaseNotesProcessor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUSReleaseNotesProcessor);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

- (id)normalizeHtmlReleaseNotes:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUSReleaseNotesProcessor *)v6 normalizeHtmlReleaseNotes:location[0] withAdditionalCSS:@":root {   color-scheme: light dark;}p {   -webkit-text-size-adjust: 100% !important;   font-family: -apple-system, system-ui, HelveticaNeue, LucidaGrande !important;   color: -apple-system-label !important;}"];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)normalizeHtmlReleaseNotes:(id)a3 withAdditionalCSS:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<style[^>]*>" options:1 error:0];
  v19 = location[0];
  v4 = [location[0] length];
  v62 = 0;
  v61 = v4;
  v63 = 0;
  v64 = v4;
  v38 = 0;
  v39 = v4;
  v40 = [v41 firstMatchInString:v19 options:0 range:{0, v4}];
  if (v40)
  {
    v34 = [v40 range];
    v35 = v5;
    v32 = [v40 range];
    v33 = v6;
    v17 = v34 + v6;
    v16 = [location[0] length];
    v30 = [v40 range];
    v31 = v7;
    v29[1] = [v40 range];
    v29[2] = v8;
    v58 = v17;
    v57 = v16 - v30 - v8;
    v59 = v17;
    v60 = v57;
    v36 = v17;
    v37 = v57;
    v29[0] = [location[0] substringWithRange:{v17, v57}];
    v28 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\/\\*\\s*apple-ota-disable-default-css\\s*\\*\\/" options:1 error:0];
    v9 = [v29[0] length];
    v54 = 0;
    v53 = v9;
    v55 = 0;
    v56 = v9;
    v25[1] = 0;
    v25[2] = v9;
    v26 = [v28 rangeOfFirstMatchInString:v29[0] options:0 range:{0, v9}];
    v27 = v10;
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v42, v29[0]];
      v44 = [location[0] stringByReplacingCharactersInRange:v36 withString:{v37, v25[0]}];
      v24 = 1;
      objc_storeStrong(v25, 0);
    }

    else
    {
      v44 = MEMORY[0x277D82BE0](location[0]);
      v24 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(v29, 0);
  }

  else
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"<style>%@</style>", v42];
    v22 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<html[^>]*>" options:1 error:0];
    v15 = location[0];
    v11 = [location[0] length];
    v50 = 0;
    v49 = v11;
    v51 = 0;
    v52 = v11;
    v21 = [v22 firstMatchInString:v15 options:0 range:{0, v11}];
    if (v21)
    {
      v20 = [v21 range];
      [v21 range];
      v46 = v20 + v12;
      v45 = 0;
      v48 = 0;
      v47 = v20 + v12;
      v44 = [location[0] stringByReplacingCharactersInRange:v20 + v12 withString:{0, v23}];
    }

    else
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", location[0], v23];
    }

    v24 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  v13 = v44;

  return v13;
}

@end