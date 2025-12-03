@interface WBSWebExtensionMatchPattern
+ (id)matchPatternForDomain:(id)domain;
- (BOOL)matchesPattern:(id)pattern options:(unint64_t)options;
- (id)_descriptionWithScheme:(id)scheme;
@end

@implementation WBSWebExtensionMatchPattern

+ (id)matchPatternForDomain:(id)domain
            v9 = {;
            [v3 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = [(WBSWebExtensionMatchPattern *)self description];
    v15 = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  return v3;
}

- (id)_descriptionWithScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = MEMORY[0x1E696AEC0];
  host = [(WBSWebExtensionMatchPattern *)self host];
  path = [(WBSWebExtensionMatchPattern *)self path];
  v8 = [v5 stringWithFormat:@"%@://%@%@", schemeCopy, host, path];

  return v8;
}

- (BOOL)matchesPattern:(id)pattern options:(unint64_t)options
{
  optionsCopy = options;
  webKitMatchPattern = self->_webKitMatchPattern;
  _webKitMatchPattern = [pattern _webKitMatchPattern];
  v7 = [(WKWebExtensionMatchPattern *)webKitMatchPattern matchesPattern:_webKitMatchPattern options:optionsCopy & 7];

  return v7;
}

@end